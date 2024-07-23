

import 'package:dio/dio.dart';
import 'package:doc_advanced/core/network/api_services.dart';
import 'package:doc_advanced/core/network/dio_factory.dart';
import 'package:doc_advanced/featues/login/data/repois/login_repo.dart';
import 'package:doc_advanced/featues/login/logic/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt () async{
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(()=>ApiServices(dio));
  getIt.registerLazySingleton<LoginRepo>(()=> LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(()=>LoginCubit(getIt()));
}