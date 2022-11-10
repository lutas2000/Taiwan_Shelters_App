import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:taiwan_shelters/domain/model/shelter.dart';
import 'package:taiwan_shelters/presentation/bloc/map_page/map_page_cubit.dart';

class ShelterMarker {
  final Shelter shelter;

  const ShelterMarker(this.shelter);

  Marker toMarker() {
    return Marker(
      point: shelter.location,
      builder: (context) {
        return GestureDetector(
          child: const SizedBox(
            width: 32,
            height: 32,
            // TODO: 更換 icon
            child: Icon(
              size: 24,
              Icons.location_on,
              color: Colors.red,
            ),
          ),
          onTap: () {
            context.read<MapPageCubit>().selectShelter(shelter);
          },
        );
      },
    );
  }
}
