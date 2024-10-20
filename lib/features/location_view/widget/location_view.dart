import 'package:flutter/material.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';

class LocationView extends StatelessWidget {
  final LocationModel locationModel;
  const LocationView({super.key, required this.locationModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(locationModel.name),
      ),
      body: Container(),
    );
  }
}
