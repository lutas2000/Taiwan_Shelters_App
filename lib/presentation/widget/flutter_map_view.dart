import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import 'package:taiwan_shelters/presentation/bloc/shelter/shelter_cubit.dart';
import 'package:taiwan_shelters/presentation/widget/shelter_marker.dart';

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
          _trackCurrentLocation();
        },
        // Stop centering the location marker on the map if user interacted with the map.
        onPositionChanged: (MapPosition position, bool hasGesture) {
          if (hasGesture) {
            setState(
              () => _centerOnLocationUpdate = CenterOnLocationUpdate.never,
            );
            _getNearbyShelters();
          }
        },
      ),
      nonRotatedChildren: [
        Positioned(
          right: 20,
          bottom: 20,
          child: FloatingActionButton(
            onPressed: () {
              _trackCurrentLocation();
              _getNearbyShelters();
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
        CurrentLocationLayer(
          centerCurrentLocationStream:
              _centerCurrentLocationStreamController.stream,
          centerOnLocationUpdate: _centerOnLocationUpdate,
        ),
        // 因為 onTap 動作會被阻擋，所以放在最外層
        BlocBuilder<ShelterCubit, ShelterState>(builder: (context, state) {
          return MarkerLayer(
            markers: state.shelters
                    ?.map((shelter) => ShelterMarker(shelter).toMarker())
                    .toList() ??
                [],
          );
        }),
      ],
    );
  }

  void _trackCurrentLocation() {
    setState(
      () => _centerOnLocationUpdate = CenterOnLocationUpdate.always,
    );
    _centerCurrentLocationStreamController.add(17);
  }

  void _getNearbyShelters() {
    // TODO: 限制與上次 distance 的間隔
    context.read<ShelterCubit>().getNearbyShelters(
          LatLng(
            _mapController.center.latitude,
            _mapController.center.longitude,
          ),
        );
  }
}
