import 'package:flutter_starter/base/ViewModel.dart';
import 'package:flutter_starter/data/model/NewsResponseModel.dart';
import 'package:flutter_starter/data/repository/news_repository.dart';
import 'package:flutter_starter/screen/details/details_data.dart';
import 'package:injectable/injectable.dart';

@injectable
class DetailsViewModel extends ViewModel<DetailsData> {
  DetailsViewModel(this._newsRepository) : super(const DetailsData.initial());

  final NewsRepository _newsRepository;

  void getNews(String category) {
    _updateState(showLoading: true);
    _newsRepository.getNews(category).then((value) {
      _updateState(newsList: value, showLoading: false);
    });
  }

  void _updateState({
    List<NewsItem>? newsList,
    bool? showLoading,
  }) {
    newsList ??= value.newsList;
    showLoading ??= value.showLoading;

    stateData = DetailsData(
      newsList: newsList,
      showLoading: showLoading,
    );
  }
}
