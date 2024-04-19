import 'package:flutter_starter/base/ViewModel.dart';
import 'package:flutter_starter/screen/home/HomeData.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeViewModel extends ViewModel<HomeData> {
  HomeViewModel() : super(const HomeData.initial());
}
