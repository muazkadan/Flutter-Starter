import 'package:flutter/material.dart';
import 'package:flutter_starter/base/Screen.dart';
import 'package:flutter_starter/screen/home/HomeData.dart';
import 'package:flutter_starter/screen/home/HomeViewModel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_starter/data/model/category.dart';

class HomeScreen extends Screen {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState
    extends ScreenState<HomeScreen, HomeViewModel, HomeData> {
  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News App')),
      body: Selector<HomeData, List<Category>>(
        selector: (_, data) => data.categoryList,
        builder: (context, categories, _) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // number of columns
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return InkWell(
                onTap: () {
                  // TODO - Navigate to news list screen
                },
                child: Card(
                  child: Center(
                    child: Text(category.name),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
