







import '../../../../core/network/api_result.dart';
import '../../../../core/network/api_services.dart';
import '../models/signup_request.dart';
import '../models/signup_response.dart';

class SignupRepo {
  final ApiServices _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return const ApiResult.failure('ErrorHandler.handle(errro)');
    }
  }
}