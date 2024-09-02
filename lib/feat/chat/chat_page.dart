import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/core/utils/utils.dart';
import 'package:get_it/get_it.dart';
import 'data/model/chat_params.dart';
import 'message_model.dart';
import 'presentation/bloc/chat_bloc.dart';

class ChatScreen extends StatefulWidget {
  final String userId;
  final String peerId;

  const ChatScreen({super.key, required this.userId, required this.peerId});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final Utils _utils = Utils();

  Future<void> sendMessage(
      String senderId, String receiverId, String content) async {
    final newMessageRef = FirebaseFirestore.instance.collection('chats').doc(_utils.generateChatId(widget.userId, widget.peerId)).collection('messages').doc();
    await newMessageRef.set({
      'senderId': senderId,
      'receiverId': receiverId,
      'content': content,
      'timestamp': FieldValue.serverTimestamp(),
    });
    await FirebaseFirestore.instance.collection('chats').doc(_utils.generateChatId(widget.userId, widget.peerId)).update({
      'lastMessage': content,
      'lastUpdated': FieldValue.serverTimestamp(),
    });
  }
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: BlocProvider(
        create: (_) => GetIt.instance.get<ChatBloc>()..add(LoadChatEvent(chatParams: ChatParams(senderId: widget.userId, receiverId: widget.peerId))),
        child: BlocBuilder<ChatBloc, ChatState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            if (state.status == ChatStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.status == ChatStatus.success) {
              return Column(
                children: [
                  Expanded(
                    child: StreamBuilder<List<Message>>(
                      stream: state.messages,
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }

                        final messages = snapshot.data!;
                        return ListView.builder(
                          itemCount: messages.length,
                          itemBuilder: (context, index) {
                            final message = messages[index];
                            return ListTile(
                              title: Text(message.content),
                              subtitle: Text(message.timestamp.toDate().toString()),
                              leading: message.senderId == widget.userId ? const Icon(Icons.person) : const Icon(Icons.person_outline),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _controller,
                            decoration: const InputDecoration(
                              hintText: 'Enter your message...',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.send),
                          onPressed: () {
                            // BlocProvider.of<ChatBloc>(context).add(SendMessageEvent(messageParams: MessageParams(chatParams: ChatParams(senderId: userId, receiverId: peerId), content: _controller.text)));
                            sendMessage(widget.userId, widget.peerId, _controller.text);
                            _controller.clear();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return const Text('Error');
            }
          },
        ),
      ),
    );
  }
}
