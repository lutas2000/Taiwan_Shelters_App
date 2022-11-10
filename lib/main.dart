import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:taiwan_shelters/domain/data_source/shelter_data_source.dart';
import 'package:taiwan_shelters/domain/fake/fake_shelter_data_source.dart';
import 'package:taiwan_shelters/repository/shelter_repository.dart';

import 'app.dart';

void main() {
  _setupDi();
  runApp(const App());
}

void _setupDi() {
  final getIt = GetIt.instance;

  // Data sources
  getIt.registerLazySingleton<ShelterDataSource>(() => FakeShelterDataSource());
  // Repositories
  getIt.registerLazySingleton<ShelterRepository>(
      () => ShelterRepository(getIt.get()));
}
