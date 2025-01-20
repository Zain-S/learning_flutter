import 'package:dio/dio.dart';
import 'package:flutter_application_1/presentation/fetch_data_using_retrofit.dart';
import 'package:logger/logger.dart';

final logger = Logger();

void main(List<String> args) {
  final dio = Dio();
  dio.options.headers['Demo-Header'] = 'demo header';
  dio.interceptors.add(LogInterceptor(responseBody: true));

  final client = RestClient(dio);
  client.getTasks().then((it) => logger.i(it));
}
