import 'package:flutter_task/feat/chat/data/model/chat_params.dart';

class MessageParams {
  final String content;
  final ChatParams  chatParams;
  MessageParams({
    required this.content,
    required this.chatParams,
  });
}