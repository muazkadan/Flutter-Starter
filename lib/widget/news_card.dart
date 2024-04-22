import 'package:flutter/material.dart';
import 'package:flutter_starter/data/model/NewsResponseModel.dart';

class NewsCard extends StatelessWidget {
  final NewsItem newsItem;

  const NewsCard({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () async {
          /* TODO */
        },
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  newsItem.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(newsItem.content),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    '${newsItem.author}, ${newsItem.date}, ${newsItem.time}',
                    style: const TextStyle(fontSize: 10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Image.network(newsItem.imageUrl),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
