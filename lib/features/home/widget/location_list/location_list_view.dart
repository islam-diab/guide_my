import 'package:flutter/material.dart';
import 'package:guide_my/core/helper/extensions.dart';
import 'package:guide_my/core/routing/routes.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
import 'package:guide_my/features/home/widget/location_list/location_list_view_item.dart';

class LocationListView extends StatelessWidget {
  final List<LocationModel> locationModel;

  const LocationListView({super.key, required this.locationModel});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      sliver: SliverList.builder(
        itemCount: locationModel.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                context.pushNamed(
                  Routes.locationView,
                  arguments: locationModel[index],
                  
                );
              },
              child: LocationListViewItem(locationModel: locationModel[index]));
        },
      ),
    );
  }
}
