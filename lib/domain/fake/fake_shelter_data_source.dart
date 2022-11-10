import 'dart:math';

import 'package:latlong2/latlong.dart';

import '../data_source/shelter_data_source.dart';
import '../model/shelter.dart';

class FakeShelterDataSource implements ShelterDataSource {
  @override
  Future<List<Shelter>> getNearbyShelters({
    required LatLng location,
    int radius = 1000,
  }) async {
    return Future.delayed(Duration.zero, () {
      const distance = Distance();
      return List<int>.generate(100, (i) => i + 1).map((e) {
        final distanceInMeters = Random().nextInt(1000);
        final bearing = Random().nextInt(360);
        final capacity = Random().nextInt(1000);
        final latLng = distance.offset(location, distanceInMeters, bearing);
        return Shelter(
          name: 'Shelter $e',
          address: 'Address $e',
          location: latLng,
          capacity: capacity,
        );
      }).toList();
      // for
    });
  }
}
