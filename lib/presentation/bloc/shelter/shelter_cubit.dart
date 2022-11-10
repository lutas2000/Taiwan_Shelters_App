library shelter_cubit_lib;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:taiwan_shelters/domain/model/shelter.dart';

import '../../../repository/shelter_repository.dart';

part 'shelter_cubit.freezed.dart';
part 'shelter_state.dart';

class ShelterCubit extends Cubit<ShelterState> {
  final ShelterRepository shelterRepository;

  ShelterCubit(this.shelterRepository) : super(const Init(null));

  Future<void> getNearbyShelters(LatLng location) async {
    emit(Loading(state.shelters));
    try {
      final shelters =
          await shelterRepository.getNearbyShelters(location: location);
      emit(Success(shelters));
    } on Exception catch (e) {
      emit(Failed(state.shelters, e));
    }
  }
}
