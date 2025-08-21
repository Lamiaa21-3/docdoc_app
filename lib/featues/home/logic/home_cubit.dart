import 'package:doc_advanced/core/helper/extensions.dart';
import 'package:doc_advanced/featues/home/data/models/specialization_response_model.dart';
import 'package:doc_advanced/featues/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;

  HomeCubit(this.homeRepo) : super(const HomeState.specializationInitial());
  List<SpecializationsData?>? specializationsDataList = [];

  void getSpecialization() async {
    emit(const HomeState.specializationLoading());
    final response = await homeRepo.getSpecialization();

    response.when(success: (specializationsResponseModel) {
      specializationsDataList =
          specializationsResponseModel.specializationDataList ?? [];
      emit(HomeState.specializationSuccess(specializationsDataList));
      getDoctorsList(specializationId: specializationsDataList?.first?.id);
    }, failure: (error) {
      emit(HomeState.specializationError(error: error));
    });
  }

  void getDoctorsList({required int? specializationId}) {
    // احصل على كائن التخصص
    final specialization = getDoctorListBySpecializationId(specializationId);

    // استخرج قائمة الأطباء من داخل كائن التخصص
    List<Doctors?>? doctorsList = specialization?.doctorsList;

    if (doctorsList != null && doctorsList.isNotEmpty) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(const HomeState.doctorsError(error: ''));
    }
  }


  SpecializationsData? getDoctorListBySpecializationId(int? specializationId) {
    return specializationsDataList?.firstWhere(
          (specialization) => specialization?.id == specializationId,
      orElse: () => null,
    );
  }

}
