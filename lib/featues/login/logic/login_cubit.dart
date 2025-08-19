import 'package:doc_advanced/core/helper/constants.dart';
import 'package:doc_advanced/core/helper/shared_pref_helper.dart';
import 'package:doc_advanced/core/network/dio_factory.dart';
import 'package:doc_advanced/featues/login/data/model/login_request_body.dart';
import 'package:doc_advanced/featues/login/logic/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repois/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (loginResponse) async{
      await saveUserToken(loginResponse.userData?.token??'');
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error));
    });
  }
Future<void>saveUserToken(String token)async{

    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);//key:value
    DioFactory.setTokenAfterLogin(token);
}
}
