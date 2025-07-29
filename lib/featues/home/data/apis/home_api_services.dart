import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../../../core/network/api_constants.dart';
import '../models/specialization_response_model.dart';
import 'home_api_constants.dart';

part 'home_api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiServices {
  factory HomeApiServices(Dio dio) = _HomeApiServices;

  @GET(HomeApiConstants.specializationEp)
  Future<SpecializationsResponseModel> getSpecialization();
}
