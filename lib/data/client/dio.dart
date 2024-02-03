import 'package:dio/dio.dart';
import 'package:prolog_test/utils/constants.dart';

class DioClient {
  Dio? dio;

  DioClient({this.dio}) {
    dio ??= Dio(
      BaseOptions(
        headers: {
          'x-prolog-api-token': PrologConstants.apiToken,
          'companyId': PrologConstants.companyId,
          'branchOffsetId': PrologConstants.branchOffsetId,
        },
        baseUrl: PrologConstants.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ),
    );
  }
}
