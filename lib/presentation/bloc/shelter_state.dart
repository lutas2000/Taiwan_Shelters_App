part of 'shelter_cubit.dart';

@freezed
class ShelterState with _$ShelterState {
  const factory ShelterState.init(List<Shelter>? shelters) = Init;
  const factory ShelterState.loading(List<Shelter>? shelters) = Loading;
  const factory ShelterState.success(List<Shelter>? shelters) = Success;
  const factory ShelterState.failed(List<Shelter>? shelters, Exception error) =
      Failed;
}
