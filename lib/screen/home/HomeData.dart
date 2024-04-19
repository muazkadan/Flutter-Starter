import 'package:flutter_starter/base/StateData.dart';
import 'package:flutter_starter/data/model/category.dart';

class HomeData extends StateData {
  const HomeData({
    required this.categoryList,
  });

  const HomeData.initial()
      : categoryList = const [
          Category(name: "All", id: "all"),
          Category(name: "National", id: "national"),
          Category(name: "Business", id: "business"),
          Category(name: "Sports", id: "sports"),
          Category(name: "World", id: "world"),
          Category(name: "Politics", id: "politics"),
          Category(name: "Technology", id: "technology"),
          Category(name: "Startup", id: "startup"),
          Category(name: "Entertainment", id: "entertainment"),
          Category(name: "Miscellaneous", id: "miscellaneous"),
          Category(name: "Hatke", id: "hatke"),
          Category(name: "Science", id: "science"),
          Category(name: "Automobile", id: "automobile"),
        ];

  final List<Category> categoryList;

  @override
  List<Object?> get props => [
        categoryList,
      ];
}
