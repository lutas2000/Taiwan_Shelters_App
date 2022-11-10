import 'package:flutter/material.dart';
import 'package:taiwan_shelters/domain/model/shelter.dart';

class ShelterDetail extends StatelessWidget {
  final Shelter shelter;

  const ShelterDetail({Key? key, required this.shelter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.dns),
          title: Text("名稱"),
          subtitle: Text(shelter.name),
        ),
        ListTile(
          leading: const Icon(Icons.location_on),
          title: Text("地址"),
          subtitle: Text(shelter.address),
        ),
        ListTile(
          leading: const Icon(Icons.group),
          title: Text("容納人數"),
          subtitle: Text(shelter.capacity.toString()),
        ),
      ],
    );
  }
}
