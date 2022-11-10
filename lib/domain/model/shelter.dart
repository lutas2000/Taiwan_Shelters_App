import 'package:latlong2/latlong.dart';

class Shelter {
  final String name;
  final String address;
  final LatLng location;
  final int capacity;

  Shelter({
    required this.name,
    required this.address,
    required this.location,
    required this.capacity,
  });
}
