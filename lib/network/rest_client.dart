import 'package:flutter_starter/data/model/NewsResponseModel.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://inshortsapi.vercel.app')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/news', )
  Future<NewsResponseModel> getNews(@Query('category') String category);
}
