import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class OsmMap extends StatefulWidget {
  final MapController mapController;

  const OsmMap({super.key, required this.mapController});

  @override
  State<OsmMap> createState() => _OsmMapState();
}

class _OsmMapState extends State<OsmMap> {
  bool _isSheetShow = false;

  @override
  Widget build(BuildContext context) {
    return OSMFlutter(
      controller: widget.mapController,
      trackMyPosition: true,
      initZoom: 14,
      stepZoom: 1.0,
      // Android 會被 call 兩遍
      onGeoPointClicked: (geoPoint) {
        debugPrint('onGeoPointClicked: $geoPoint');
        _showBottomSheet();
      },
      showZoomController: true,
      androidHotReloadSupport: true,
      onMapIsReady: (isReady) async {
        debugPrint('Map is ready $isReady');
        if (isReady) {
          debugPrint('Map is ready');
          await widget.mapController.currentLocation();
          await widget.mapController.addMarker(
            GeoPoint(latitude: 25.0498347, longitude: 121.5183801),
          );
        }
      },
      markerOption: MarkerOption(
        defaultMarker: const MarkerIcon(
          icon: Icon(Icons.dangerous, size: 32, color: Colors.blue),
        ),
      ),
      onLocationChanged: (location) {
        debugPrint('Location changed $location');
      },
    );
  }

  void _showBottomSheet() {
    if (_isSheetShow) {
      return;
    }
    _isSheetShow = true;
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      builder: (context) {
        return const SizedBox(
          height: 200,
          child: Center(
            child: Text('Hello'),
          ),
        );
      },
    ).whenComplete(() => _isSheetShow = false);
  }
}
