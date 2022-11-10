part of 'map_page_cubit.dart';

@freezed
class MapPageState with _$MapPageState {
  const factory MapPageState.none() = _None;

  const factory MapPageState.showSnackBar(
    String snackBarMsg,
  ) = _ShowSnackBar;

  const factory MapPageState.selectShelter(
    Shelter selectedShelter,
  ) = _SelectShelter;
}
