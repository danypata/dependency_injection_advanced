// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../blocs/home_bloc.dart' as _i7;
import '../networking/config.dart' as _i3;
import '../networking/dio_provider.dart' as _i8;
import '../networking/fact_client.dart' as _i5;
import '../repos/simple_repo.dart' as _i6;

const String _cat = 'cat';
const String _chuck = 'chuck';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioProvider = _$DioProvider();
  gh.factory<_i3.IConfig>(() => _i3.AppConfig(), registerFor: {_cat});
  gh.factory<_i3.IConfig>(() => _i3.ChuckConfig(), registerFor: {_chuck});
  gh.singleton<_i4.Dio>(dioProvider.dio(get<_i3.IConfig>()));
  gh.factory<_i5.FactClient>(
      () => _i5.CatFactClient(dio: get<_i4.Dio>(), config: get<_i3.IConfig>()),
      registerFor: {_cat});
  gh.factory<_i5.FactClient>(
      () =>
          _i5.ChuckFactClient(dio: get<_i4.Dio>(), config: get<_i3.IConfig>()),
      registerFor: {_chuck});
  gh.factory<_i6.FunFactRepo>(
      () => _i6.CatFacts(factClient: get<_i5.FactClient>()));
  gh.factory<_i7.HomeBloc>(() => _i7.HomeBloc(get<_i6.FunFactRepo>()));
  return get;
}

class _$DioProvider extends _i8.DioProvider {}
