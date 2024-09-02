import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../failure/failure.dart';

@injectable
class NetworkUtils {
  final Dio dio;
  NetworkUtils({required this.dio});

  Future<dynamic> get({required String path}) async {
    try {
      final response = await dio.get( path);
      return returnResponse(response: response);
    } on ServerException {
      throw ServerFailure("");
    }
  }

  dynamic returnResponse({required Response response}) {
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data;
    } else{
      throw ServerException(response.data);
    }
  }
}
