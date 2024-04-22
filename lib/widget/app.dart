import 'package:flutter/material.dart';
import 'package:flutter_starter/factory/ViewModelFactory.dart';
import 'package:flutter_starter/inject/dependency_injection.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {

  final Widget _child;

  const App(this._child, {super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      Provider.value(value: getIt.get<ViewModelFactory>())
    ],
    child: _child,
  );
}