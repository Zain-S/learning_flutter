import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'model/tasks.dart';

part 'fetch_data_using_retrofit.g.dart';

@RestApi(baseUrl: 'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/')
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @GET('/tasks')
  Future<List<Tasks>> getTasks();
}

void main() async {}
