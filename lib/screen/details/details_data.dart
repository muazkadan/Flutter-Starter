import 'package:flutter_starter/base/StateData.dart';
import 'package:flutter_starter/data/model/NewsResponseModel.dart';

class DetailsData extends StateData {
  const DetailsData({
    required this.newsList,
    required this.showLoading,
  });

  const DetailsData.initial()
      : newsList = const [],
        showLoading = false;

  final List<NewsItem> newsList;
  final bool showLoading;

  @override
  List<Object?> get props => [newsList, showLoading];
}
