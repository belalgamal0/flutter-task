part of 'chat_bloc.dart';

@freezed
class ChatEvents with _$ChatEvents {
    const factory ChatEvents.getChat({
    required ChatParams chatParams
  }) = LoadChatEvent;
      const factory ChatEvents.sendMessage({
    required MessageParams messageParams
  }) = SendMessageEvent;
}