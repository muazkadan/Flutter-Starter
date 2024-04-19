import 'package:flutter/cupertino.dart';
import 'package:flutter_starter/base/StateData.dart';
import 'package:flutter_starter/base/ViewModel.dart';
import 'package:flutter_starter/factory/ViewModelFactory.dart';
import 'package:provider/provider.dart';

abstract class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  ScreenState createState();
}

abstract class ScreenState<T extends Screen, T2 extends ViewModel<T3>,
    T3 extends StateData> extends State<T> {
  ScreenState();

  late final T2 viewModel;

  Widget buildScreen(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ValueListenableProvider<T3>.value(value: viewModel),
      ],
      builder: (context, _) => buildScreen(context),
    );
  }

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    viewModel = context.read<ViewModelFactory>().create<T2>();
  }

  @override
  @mustCallSuper
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }
}
