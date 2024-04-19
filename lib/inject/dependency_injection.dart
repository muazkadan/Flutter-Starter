import 'package:flutter_starter/inject/dependency_injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.I;

@InjectableInit()
void initializeGetIt() {
  getIt.init();
}