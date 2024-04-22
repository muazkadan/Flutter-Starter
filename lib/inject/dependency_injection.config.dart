// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_starter/data/repository/news_repository.dart' as _i7;
import 'package:flutter_starter/factory/ViewModelFactory.dart' as _i6;
import 'package:flutter_starter/network/rest_client.dart' as _i5;
import 'package:flutter_starter/screen/home/HomeViewModel.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.factory<_i3.HomeViewModel>(() => _i3.HomeViewModel());
    gh.singleton<_i4.Dio>(() => injectableModule.dio);
    gh.lazySingleton<_i5.RestClient>(() => injectableModule.restClient);
    gh.singleton<_i6.ViewModelFactory>(() => _i6.ViewModelFactoryImpl());
    gh.singleton<_i7.NewsRepository>(
        () => _i7.NewsRepository(gh<_i5.RestClient>()));
    return this;
  }
}

class _$InjectableModule extends _i5.InjectableModule {}
