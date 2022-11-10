import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taiwan_shelters/domain/model/shelter.dart';

part 'map_page_cubit.freezed.dart';
part 'map_page_state.dart';

class MapPageCubit extends Cubit<MapPageState> {
  MapPageCubit() : super(const _None());

  void showSnackBar(String msg) {
    emit(_ShowSnackBar(msg));
  }

  void selectShelter(Shelter shelter) {
    emit(_SelectShelter(shelter));
  }

  void closeShelter() {
    emit(const _None());
  }
}
