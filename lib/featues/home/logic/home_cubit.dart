import 'package:doc_advanced/featues/home/data/models/specialization_response_model.dart';
import 'package:doc_advanced/featues/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;

  HomeCubit(this.homeRepo) : super(const HomeState.specializationInitial());

  void getSpecialization() async {
    emit(const HomeState.specializationLoading());
    final response = await homeRepo.getSpecialization();

    response.when(success: (specializationsResponseModel) {
      emit(HomeState.specializationSuccess(
          specializationsResponseModel.specializationDataList));
    }, failure: (error) {
      emit(HomeState.specializationError(error: error));
    });
  }
}
