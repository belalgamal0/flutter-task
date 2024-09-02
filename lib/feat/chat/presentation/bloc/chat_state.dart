part of 'chat_bloc.dart';

enum ChatStatus {
  initial,
  loading,
  sending,
  success,
  error,
}

final class ChatState {
  const ChatState._({
    this.status = ChatStatus.initial,
    this.messages = const Stream.empty(),
  });

  const ChatState.initial() : this._();

  const ChatState.loading() : this._(status: ChatStatus.loading);
  const ChatState.sending() : this._(status: ChatStatus.sending);

  const ChatState.success(Stream<List<Message>> messages)
      : this._(status: ChatStatus.success, messages: messages);

  const ChatState.failure() : this._(status: ChatStatus.error);

  final ChatStatus status;
  final Stream<List<Message>> messages;

  ChatState copyWith({
    ChatStatus? status,
    Stream<List<Message>>? messages,
  }) {
    return ChatState._(
      status: status ?? this.status,
      messages: messages ?? this.messages,
    );
  }
}
