import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import 'package:taiwan_shelters/presentation/bloc/shelter_cubit.dart';

class FlutterMapView extends StatefulWidget {
  const FlutterMapView({super.key});

  @override
  State<FlutterMapView> createState() => _FlutterMapViewState();
}

class _FlutterMapViewState extends State<FlutterMapView> {
  final _mapController = MapController();
  late CenterOnLocationUpdate _centerOnLocationUpdate;
  late StreamController<double?> _centerCurrentLocationStreamController;

  @override
  void initState() {
    super.initState();
    _centerOnLocationUpdate = CenterOnLocationUpdate.always;
    _centerCurrentLocationStreamController = StreamController<double?>();
  }

  @override
  void dispose() {
    _centerCurrentLocationStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        center: LatLng(23.4747371, 120.950500),
        zoom: 7,
        maxZoom: 19,
        onMapReady: () {
          debugPrint('Map is ready');
        },
        // Stop centering the location marker on the map if user interacted with the map.
        onPositionChanged: (MapPosition position, bool hasGesture) {
          // TODO: search nearby shelters
          if (hasGesture) {
            setState(
              () => _centerOnLocationUpdate = CenterOnLocationUpdate.never,
            );
          }
        },
      ),
      nonRotatedChildren: [
        // AttributionWidget.defaultWidget(
        //   source: 'OpenStreetMap contributors',
        //   onSourceTapped: null,
        // ),
        Positioned(
          right: 20,
          bottom: 20,
          child: FloatingActionButton(
            onPressed: () {
              setState(
                () => _centerOnLocationUpdate = CenterOnLocationUpdate.always,
              );
              _centerCurrentLocationStreamController.add(18);
              context.read<ShelterCubit>().getNearbyShelters(
                    LatLng(
                      _mapController.center.latitude,
                      _mapController.center.longitude,
                    ),
                  );
            },
            child: const Icon(
              Icons.my_location,
              color: Colors.white,
            ),
          ),
        ),
      ],
      children: [
        // TODO: 使用 offline map
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'me.lutas.shelters',
        ),
        BlocBuilder<ShelterCubit, ShelterState>(builder: (context, state) {
          return MarkerLayer(
            markers: state.shelters
                    ?.map(
                      (shelter) => Marker(
                        point: shelter.location,
                        // TODO: create marker component
                        builder: (_) => const Icon(Icons.add_alert),
                      ),
                    )
                    .toList() ??
                [],
          );
        }),
        CurrentLocationLayer(
          centerCurrentLocationStream:
              _centerCurrentLocationStreamController.stream,
          centerOnLocationUpdate: _centerOnLocationUpdate,
        ),
      ],
    );
  }

  void test() {
    // _mapController.
  }
}
