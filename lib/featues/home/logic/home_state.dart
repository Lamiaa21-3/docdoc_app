import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/specialization_response_model.dart';
part 'home_state.freezed.dart';
@freezed
class HomeState with _$HomeState {
  const factory HomeState.specializationInitial() = _SpecializationInitial;



  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(List<SpecializationsData?>? specializationDataList) = SpecializationSuccess;
  const factory HomeState.specializationError({required String error})=SpecializationError;



  const factory HomeState.doctorsSuccess( List<Doctors?>? doctorsList) = DoctorSuccess;
  const factory HomeState.doctorsError({required String error}) =DoctorsError;

}