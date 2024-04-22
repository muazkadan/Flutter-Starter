import 'package:json_annotation/json_annotation.dart';

part 'NewsResponseModel.g.dart';

@JsonSerializable()
class NewsResponseModel {
  final String category;
  final List<NewsItem> data;
  final String? error;
  final bool success;

  NewsResponseModel({
    required this.category,
    required this.data,
    this.error,
    required this.success,
  });

  factory NewsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsResponseModelToJson(this);
}

@JsonSerializable()
class NewsItem {
  final String author;
  final String content;
  final String date;
  final String imageUrl;
  final String? readMoreUrl;
  final String time;
  final String title;
  final String url;

  NewsItem({
    required this.author,
    required this.content,
    required this.date,
    required this.imageUrl,
    this.readMoreUrl,
    required this.time,
    required this.title,
    required this.url,
  });

  factory NewsItem.fromJson(Map<String, dynamic> json) =>
      _$NewsItemFromJson(json);

  Map<String, dynamic> toJson() => _$NewsItemToJson(this);
}
