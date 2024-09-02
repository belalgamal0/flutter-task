import 'package:dartz/dartz.dart';
import 'package:flutter_task/feat/chat/data/model/message_params.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repo/chat_repo.dart';
import '../../message_model.dart';
import '../datasource/chat_data_source.dart';
import '../model/chat_params.dart';

@Injectable(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDataSource chatRemoteDataSource;
  final NetworkInfo networkInfo;


  ChatRepositoryImpl(
      {required this.chatRemoteDataSource, required this.networkInfo});
  @override
  Future<Either<Failure, Stream<List<Message>>>> getChat({required ChatParams chatParams}) async {
    return await _getChat(chatParams: chatParams);
  }
    @override
  Future<Either<Failure, void>> sendMessage({required MessageParams messageParams}) async {
    return await _sendMessage(messageParams: messageParams);
  }
  Future<Either<Failure, Stream<List<Message>>>> _getChat({required ChatParams chatParams}) async {
    if (await networkInfo.isConnected) {
      try {
        final loadLogin = await chatRemoteDataSource.getChat(chatParams: chatParams);
        return Right(loadLogin);
      } on ServerFailure {
        return Left(ServerFailure(''));
      }
    } else {
      return Left(ServerFailure(''));
    }
  }
    Future<Either<Failure, void>> _sendMessage({required MessageParams messageParams}) async {
    if (await networkInfo.isConnected) {
      try {
        await chatRemoteDataSource.sendMessage(messageParams: messageParams);
        return const Right(null);
      } on ServerFailure {
        return Left(ServerFailure(''));
      }
    } else {
      return Left(ServerFailure(''));
    }
  }
}