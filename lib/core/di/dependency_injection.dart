import 'package:dio/dio.dart';
import 'package:doct_omar_yt/core/networking/api/api_services.dart';
import 'package:doct_omar_yt/core/networking/api_factory.dart';
import 'package:doct_omar_yt/features/login/data/repos/login_repo.dart';
import 'package:doct_omar_yt/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

// getIt is a service locator for dependency injection.
final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
//Dio and ApiServices
  Dio dio = DioFactory.getDio();
  // i used this registerLazySingleton to make it lazy singleton which mean it will only be created when it is needed.
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
