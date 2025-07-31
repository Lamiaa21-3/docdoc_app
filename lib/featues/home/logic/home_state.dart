import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';
@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.specializationInitial() = _SpecializationInitial;



  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(T data) = SpecializationSuccess<T>;
  const factory HomeState.specializationError({required String error})=SpecializationError;



  const factory HomeState.doctorsSuccess(T data) = DoctorSuccess<T>;
  const factory HomeState.doctorsError({required String error}) =DoctorsError;

}