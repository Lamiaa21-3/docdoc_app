import 'package:doc_advanced/featues/login/data/model/login_request_body.dart';
import 'package:doc_advanced/featues/login/logic/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repois/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final respone = await _loginRepo.login(loginRequestBody);
    respone.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error));
    });
  }
}
