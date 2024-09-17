import 'package:flutter/material.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
import 'package:guide_my/features/home/widget/location_list/location_list_view_item.dart';

class LocationListView extends StatelessWidget {
  final List<LocationModel?>? locationModel;

  const LocationListView({super.key, required this.locationModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: locationModel!.length,
        itemBuilder: (context, index) {
          return LocationListViewItem(locationModel: locationModel![index]!);
        },
      ),
    );
  }
}
