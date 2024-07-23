import 'package:doc_advanced/core/network/api_services.dart';
import 'package:doc_advanced/featues/login/data/model/login_request_body.dart';

import '../../../../core/network/api_result.dart';
import '../model/login_response.dart';

class LoginRepo {
  final ApiServices _apiServices;

  LoginRepo(this._apiServices);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiServices.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
       return ApiResult.failure('');

    }
  }
}
