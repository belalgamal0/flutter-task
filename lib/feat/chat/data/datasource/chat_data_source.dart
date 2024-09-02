import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_task/feat/chat/data/model/message_params.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../../message_model.dart';
import '../model/chat_params.dart';

abstract class ChatRemoteDataSource {
  Future<Stream<List<Message>>> getChat({required ChatParams chatParams});
  Future<void> sendMessage({required MessageParams messageParams});
}


@Injectable(as: ChatRemoteDataSource)
class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  final FirebaseFirestore firebaseFirestore;
  const ChatRemoteDataSourceImpl(this.firebaseFirestore);
  @override
  Future<Stream<List<Message>>> getChat({required ChatParams chatParams}) => _getChatFromApi(chatParams: chatParams);
  @override
  Future<void> sendMessage({required MessageParams messageParams}) => _sendMessageFromApi(messageParams: messageParams);
  Future<Stream<List<Message>>> _getChatFromApi({required ChatParams chatParams}) async {
    String chatId = _generateChatId(chatParams.senderId, chatParams.receiverId);
        try {
          await createOrGetChat(chatParams.senderId, chatParams.receiverId);
          final result = firebaseFirestore.collection('chats').doc(chatId).collection('messages').orderBy('timestamp').snapshots().map((snapshot) => snapshot.docs.map((doc) {
              final data = doc.data();
              return Message(
                senderId: data['senderId'],
                receiverId: data['receiverId'],
                content: data['content'],
                timestamp: (data['timestamp'] as Timestamp),
              );
            }).toList());
      return result;
    } catch (e) {
      throw ServerFailure('');
    }
}
  Future<void> _sendMessageFromApi({required MessageParams messageParams}) async {
        try {
    final newMessageRef = FirebaseFirestore.instance.collection('chats').doc(_generateChatId(messageParams.chatParams.senderId, messageParams.chatParams.receiverId)).collection('messages').doc();
    await newMessageRef.set({
      'senderId': messageParams.chatParams.senderId,
      'receiverId': messageParams.chatParams.receiverId,
      'content': messageParams.content,
      'timestamp': FieldValue.serverTimestamp(),
    });
     await updateChat(chatId: _generateChatId(messageParams.chatParams.senderId, messageParams.chatParams.receiverId), content: messageParams.content);
    } catch (e) {
      throw ServerFailure('');
    }
}
  Future<String> createOrGetChat(String userId, String peerId) async {
    final chatId = _generateChatId(userId, peerId);
    final chatRef = firebaseFirestore.collection('chats').doc(chatId);
    final chatDoc = await chatRef.get();
    if (!chatDoc.exists) {
      await chatRef.set({
        'participants': [userId, peerId],
        'lastMessage': '',
        'lastUpdated': FieldValue.serverTimestamp(),
      });
    }
    return chatId;
  }
    String _generateChatId(String userId1, String userId2) {
    return userId1.compareTo(userId2) < 0 ? '${userId1}_$userId2' : '${userId2}_$userId1';
  }
  Future<void> updateChat({required String chatId, required String content})async{
      await FirebaseFirestore.instance.collection('chats').doc(chatId).update({
      'lastMessage': content,
      'lastUpdated': FieldValue.serverTimestamp(),
    });
  }
}
