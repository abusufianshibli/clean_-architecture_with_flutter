import 'package:benchmark_project/domain/model/user/user_entity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @POST("API Name")
  Future<UserEntity> login(@Body() Map<String, dynamic> map);
}
