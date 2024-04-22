import 'package:flutter/material.dart';
import 'package:flutter_starter/base/Screen.dart';
import 'package:flutter_starter/data/model/NewsResponseModel.dart';
import 'package:flutter_starter/screen/details/details_data.dart';
import 'package:flutter_starter/screen/details/details_viewmodel.dart';
import 'package:flutter_starter/widget/news_card.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends Screen {
  const DetailsScreen({super.key, required this.category, required this.title});

  final String title;
  final String category;

  @override
  _DetailsScreenState createState() =>
      _DetailsScreenState(title: title, category: category);
}

class _DetailsScreenState
    extends ScreenState<DetailsScreen, DetailsViewModel, DetailsData> {
  _DetailsScreenState({required this.title, required this.category});

  final String title;
  final String category;

  @override
  void initState() {
    super.initState();
    viewModel.getNews(category);
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Selector<DetailsData, List<NewsItem>>(
            selector: (_, data) => data.newsList,
            builder: (context, newsList, _) {
              return ListView.builder(
                itemCount: newsList.length,
                itemBuilder: (context, index) {
                  final news = newsList[index];
                  return NewsCard(newsItem: news);
                },
              );
            },
          ),
          const Center(child: _ProgressBar()),
        ],
      ),
    );
  }
}

class _ProgressBar extends StatelessWidget {
  const _ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<DetailsData, bool>(
      selector: (_, data) => data.showLoading,
      builder: (context, showLoading, _) => Visibility(
        visible: showLoading,
        child: const CircularProgressIndicator(),
      ),
    );
  }
}
