import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

import '../widget/osm_map.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _mapController = MapController(
    initPosition: GeoPoint(latitude: 23.4747371, longitude: 117.840672),
  );

  @override
  void initState() {
    super.initState();
    // _mapController.on
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _mapController.currentLocation();
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.my_location, color: Colors.blueAccent,),
      ),
      body: Stack(
        children: [
          OsmMap(mapController: _mapController),
        ],
      )
    );
  }
}

