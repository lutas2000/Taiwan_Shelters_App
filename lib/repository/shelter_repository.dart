import 'package:latlong2/latlong.dart';
import 'package:taiwan_shelters/domain/data_source/shelter_data_source.dart';

import '../domain/model/shelter.dart';

class ShelterRepository {
  final ShelterDataSource dataSource;

  ShelterRepository(this.dataSource);

  Future<List<Shelter>> getNearbyShelters({
    required LatLng location,
    int radius = 1000,
  }) async {
    return dataSource.getNearbyShelters(location: location);
  }
}
