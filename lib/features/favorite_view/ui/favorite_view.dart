import 'package:flutter/material.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/core/routing/routes.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
import 'package:guide_my/features/home/ui/home/location_list/location_list_view_item.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    Box<LocationModel> location = Hive.box<LocationModel>(HiveKeys.faverote);
    List<LocationModel> locationModel = location.values.toList();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("الأماكن المفضلة"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: locationModel.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.locationView,
                    arguments: locationModel[index],
                  );
                },
                child: LocationListViewItem(
                  locationModel: locationModel[index],
                ),
              );
            }),
      ),
    );
  }
}
