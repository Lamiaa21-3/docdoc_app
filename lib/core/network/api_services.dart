import 'package:dio/dio.dart';
import 'package:doc_advanced/core/network/api_constants.dart';
import 'package:doc_advanced/featues/login/data/model/login_request_body.dart';
import 'package:doc_advanced/featues/login/data/model/login_response.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
