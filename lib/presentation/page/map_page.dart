import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:taiwan_shelters/presentation/bloc/map_page/map_page_cubit.dart';
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
  final _cubit = MapPageCubit();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _requestLocationPermission();
      _listenCubit();
    });
  }

  void _listenCubit() {
    _cubit.stream.listen((event) {
      event.maybeWhen(
        showSnackBar: (msg) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(msg),
            ),
          );
        },
        selectShelter: (shelter) {
          showModalBottomSheet(
            context: context,
            // TODO: Shelter detail component
            builder: (context) => Container(
              child: Center(
                child: Text(shelter.name),
              ),
            ),
            // 清理狀態
          ).whenComplete(() => _cubit.closeShelter());
        },
        orElse: () {},
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ShelterCubit(GetIt.I.get())),
        BlocProvider(create: (_) => _cubit),
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
      _cubit.showSnackBar('無法取得 GPS 權限!');
    }
  }
}
