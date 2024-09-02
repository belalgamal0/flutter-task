import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/feat/chat/data/model/chat_params.dart';
import 'package:flutter_task/feat/chat/data/model/message_params.dart';
import 'package:flutter_task/feat/chat/domain/usecase/send_message.dart';
import 'package:flutter_task/feat/chat/message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/failure/failure.dart';
import '../../domain/usecase/load_chat.dart';
part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvents, ChatState> {
  final LoadChat loadChat;
  final SendMessage sendMessage;

  ChatBloc({required this.loadChat, required this.sendMessage})
      : super(const ChatState.initial()) {
    on<LoadChatEvent>(_loadChats);
    on<SendMessageEvent>(_sendMessage);
  }

  void _loadChats(LoadChatEvent event, Emitter<ChatState> emit) async {
    emit(const ChatState.loading());

    final result = await loadChat(chatParams: event.chatParams);
    _eitherLoadedOrErrorState(result, emit);
  }

  void _sendMessage(SendMessageEvent event, Emitter<ChatState> emit) async {
    emit(const ChatState.sending());

    final result = await sendMessage(messageParams: event.messageParams);
    _eitherLoadedOrErrorStateSending(result, emit);
  }

  void _eitherLoadedOrErrorState(
    Either<Failure, Stream<List<Message>>> failureOrStream,
    Emitter<ChatState> emit,
  ) {
    failureOrStream.fold(
      (failure) {
        emit(const ChatState.failure());
      },
      (stream) {
        emit(ChatState.success(stream));
      },
    );
  }

  void _eitherLoadedOrErrorStateSending(
    Either<Failure, void> failureOrStream,
    Emitter<ChatState> emit,
  ) {
    failureOrStream.fold(
      (failure) {
        emit(const ChatState.failure());
      },
      (stream) {
        emit(state.copyWith(status: ChatStatus.success));
      },
    );
  }
}
