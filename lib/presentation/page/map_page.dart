import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:taiwan_shelters/presentation/bloc/shelter/shelter_cubit.dart';

import '../widget/flutter_map_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PersistentBottomSheetController? bottomSheetController;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _requestLocationPermission();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ShelterCubit(GetIt.I.get())),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Stack(
          children: const [
            FlutterMapView(),
          ],
        ),
      ),
    );
  }

  void _requestLocationPermission() async {
    var status = await Permission.location.status;
    if (status.isGranted) {
      return;
    }
    status = await Permission.location.request();
    if (!status.isGranted) {
      const snackBar = SnackBar(
        content: Text('無法取得 GPS 權限!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
