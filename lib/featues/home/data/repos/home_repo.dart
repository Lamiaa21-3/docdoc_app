
import 'package:doc_advanced/core/network/api_result.dart';
import 'package:doc_advanced/featues/home/data/apis/home_api_services.dart';
import 'package:doc_advanced/featues/home/data/models/specialization_response_model.dart';

class HomeRepo{
  final HomeApiServices homeApiServices;

  HomeRepo(this.homeApiServices);




  Future<ApiResult<SpecializationsResponseModel>> getSpecialization()async {
    try{
      final response =await homeApiServices.getSpecialization();
      return ApiResult.success(response);
    }
    catch(error){
      return ApiResult.failure(error.toString());
    }
  }
}