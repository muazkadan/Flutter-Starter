import 'package:flutter_starter/data/model/NewsResponseModel.dart';
import 'package:flutter_starter/inject/dependency_injection.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://inshortsapi.vercel.app')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/news')
  Future<NewsResponseModel> getNews(@Query('category') String category);
}

@module
abstract class InjectableModule {
  @singleton
  Dio get dio => Dio();

  @lazySingleton
  RestClient get restClient => RestClient(getIt<Dio>());
}
