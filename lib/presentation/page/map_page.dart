import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

import '../widget/flutter_map_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _mapController = MapController(
    // not work?
    initPosition: GeoPoint(latitude: 23.4747371, longitude: 117.840672),
  );
  PersistentBottomSheetController? bottomSheetController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     // await _mapController.currentLocation();
      //     // await _mapController.changeLocation(
      //     //     GeoPoint(latitude: 25.0498347, longitude: 121.51838009999997));
      //     // _mapController.setZoom(zoomLevel: 14);
      //   },
      //   backgroundColor: Colors.white,
      //   child: const Icon(
      //     Icons.my_location,
      //     color: Colors.blueAccent,
      //   ),
      // ),
      body: Stack(
        children: [
          // OsmMap(mapController: _mapController),
          FlutterMapView(),
        ],
      ),
    );
  }
}
