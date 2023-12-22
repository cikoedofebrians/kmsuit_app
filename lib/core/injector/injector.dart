import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kmsuit_app/core/network/network.dart';
import 'package:kmsuit_app/core/routings/routing_conf.dart';
import 'package:kmsuit_app/feature/first/bloc/first_bloc.dart';
import 'package:kmsuit_app/feature/second/bloc/second_bloc.dart';
import 'package:kmsuit_app/feature/third/data/data_source/remote_data_source.dart';
import 'package:kmsuit_app/feature/third/data/repository/repository_impl.dart';
import 'package:kmsuit_app/feature/third/domain/repository/repository.dart';
import 'package:kmsuit_app/feature/third/domain/usecase/get_users_usecase.dart';
import 'package:kmsuit_app/feature/third/presentation/bloc/third_bloc.dart';

final getIt = GetIt.I;

void configureDependencies() {
  // NETWORK
  getIt.registerFactory(() => Dio());
  getIt.registerFactory(() => DioClient(getIt<Dio>())..init());
  getIt.registerFactory(() => InternetConnectionChecker());
  getIt.registerFactory<NetworkInfo>(() =>
      NetworkInfoImpl(connectionChecker: getIt<InternetConnectionChecker>()));

  // ROUTER
  getIt.registerFactory(() => AppRouteConf());

  // FIRST SCREEN
  getIt.registerFactory(() => FirstBloc());

  // SECOND SCREEN
  getIt.registerFactory(() => SecondBloc());

  // THIRD SCREEN
  getIt.registerFactory<RemoteDataSource>(
      () => RemoteDataSourceImpl(getIt<DioClient>()));
  getIt.registerFactory<Repository>(
      () => RepositoryImpl(getIt<RemoteDataSource>(), getIt<NetworkInfo>()));
  getIt.registerFactory<GetUsersUsecase>(
      () => GetUsersUsecase(getIt<Repository>()));
  getIt.registerFactory(() => ThirdBloc(getIt<GetUsersUsecase>()));
}
