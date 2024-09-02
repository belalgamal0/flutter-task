import 'package:dartz/dartz.dart';
import 'package:flutter_task/feat/chat/data/model/message_params.dart';
import '../../../../core/failure/failure.dart';
import '../../data/model/chat_params.dart';
import '../../message_model.dart';

abstract class ChatRepository {
  Future<Either<Failure, Stream<List<Message>>>> getChat({required ChatParams chatParams});
  Future<Either<Failure, void>> sendMessage({required MessageParams messageParams});
}