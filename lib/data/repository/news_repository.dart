import 'dart:async';

import 'package:flutter_starter/data/model/NewsResponseModel.dart';
import 'package:flutter_starter/network/rest_client.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class NewsRepository {
  NewsRepository(this._restClient);

  final RestClient _restClient;

  Future<List<NewsItem>> getNews(String category) async {
    return _restClient.getNews(category).then((value) => value.data);
  }
}
