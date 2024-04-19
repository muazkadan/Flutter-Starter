import 'package:injectable/injectable.dart';

import '../base/ViewModel.dart';
import '../inject/dependency_injection.dart';

abstract class ViewModelFactory {
  T create<T extends ViewModel>();
}

@Singleton(as: ViewModelFactory)
class ViewModelFactoryImpl implements ViewModelFactory {
  @override
  T create<T extends ViewModel>() => getIt.get<T>();
}