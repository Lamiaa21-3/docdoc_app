import 'package:dio/dio.dart';
import 'package:doc_advanced/core/network/api_services.dart';
import 'package:doc_advanced/core/network/dio_factory.dart';
import 'package:doc_advanced/featues/home/data/apis/home_api_services.dart';
import 'package:doc_advanced/featues/home/data/repos/home_repo.dart';
import 'package:doc_advanced/featues/login/data/repois/login_repo.dart';
import 'package:doc_advanced/featues/login/logic/login_cubit.dart';
import 'package:doc_advanced/featues/signup/data/repois/signup_repois.dart';
import 'package:doc_advanced/featues/signup/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //dio services
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

//****************************//
  // بينشا نسخه مرة واحدة كل مرة بيحتاجها بيستخدمها <== registerLazySingleton
  //registerFactory ==> بينشا نسخة جديدة كل مرة بيحتاج فيها
//****************************//

//login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

//sign up
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));



  //home
  getIt.registerLazySingleton<HomeApiServices>(() => HomeApiServices(dio));
  getIt.registerFactory<HomeRepo>(() => HomeRepo(getIt()));
  // getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}

// void setupLocator() {
//   getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
// }
