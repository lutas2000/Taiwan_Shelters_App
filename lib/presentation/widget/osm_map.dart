import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class OsmMap extends StatefulWidget {
  final MapController mapController;

  const OsmMap({super.key, required this.mapController});

  @override
  State<OsmMap> createState() => _OsmMapState();
}

class _OsmMapState extends State<OsmMap> {
  @override
  Widget build(BuildContext context) {
    return OSMFlutter(
      controller: widget.mapController,
      trackMyPosition: true,
      initZoom: 14,
      stepZoom: 1.0,
      showZoomController: true,
      androidHotReloadSupport: true,
      // showDefaultInfoWindow: true,
      onMapIsReady: (isReady) async {
        debugPrint('Map is ready $isReady');
        if (isReady) {
          debugPrint('Map is ready');
          await widget.mapController.currentLocation();
          await widget.mapController.addMarker(
            GeoPoint(latitude: 25.0357028, longitude: 121.4766359),
            // markerIcon: const MarkerIcon(
            //   icon: Icon(Icons.ice_skating, size: 32),
            // ),
            // angle:pi/3,
          );
        }
      },
      markerOption: MarkerOption(
        defaultMarker: const MarkerIcon(
          icon: Icon(Icons.dangerous, size: 64, color: Colors.red),
        ),
        advancedPickerMarker: const MarkerIcon(
          icon: Icon(Icons.ac_unit, size: 32),
        ),
      ),
      onLocationChanged: (location) {
        debugPrint('Location changed $location');
      },
    );
  }
}