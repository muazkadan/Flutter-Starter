import 'package:flutter/material.dart';
import 'package:flutter_starter/inject/dependency_injection.dart';
import 'package:flutter_starter/screen/home/HomeScreen.dart';
import 'package:flutter_starter/widget/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeGetIt();

  runApp(
    App(
      MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    ),
  );
}
