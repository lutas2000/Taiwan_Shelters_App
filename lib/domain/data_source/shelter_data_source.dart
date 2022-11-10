import 'package:latlong2/latlong.dart';

import '../model/shelter.dart';

abstract class ShelterDataSource {
  Future<List<Shelter>> getNearbyShelters({
    required LatLng location,
    int radius = 1000,
  });
}
