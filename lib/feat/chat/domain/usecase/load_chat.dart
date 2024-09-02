import 'package:dartz/dartz.dart';
import '../../../../core/failure/failure.dart';
import '../../data/model/chat_params.dart';
import '../../message_model.dart';
import '../repo/chat_repo.dart';

class LoadChat {
  LoadChat({required ChatRepository repository})
      : _repository = repository;

  final ChatRepository _repository;

  Future<Either<Failure, Stream<List<Message>>>> call({required ChatParams chatParams}) async {
    final messagesList = await _repository.getChat(chatParams: chatParams);
    return messagesList;
  }
}
