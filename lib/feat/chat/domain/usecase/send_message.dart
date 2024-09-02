import 'package:dartz/dartz.dart';
import 'package:flutter_task/feat/chat/data/model/message_params.dart';
import '../../../../core/failure/failure.dart';
import '../repo/chat_repo.dart';

class SendMessage {
  SendMessage({required ChatRepository repository})
      : _repository = repository;

  final ChatRepository _repository;

  Future<Either<Failure, void>> call({required MessageParams messageParams}) async {
    return await _repository.sendMessage(messageParams: messageParams);
  }
}
