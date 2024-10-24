import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/functions/url.dart';
import 'package:guide_my/core/helper/spase.dart';
import 'package:guide_my/core/theming/app_color.dart';
import 'package:guide_my/core/theming/app_text_styles.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
import 'package:guide_my/features/location_view/ui/widget/custtom_list_tile.dart';

part 'widget/location_view_body.dart';
part 'widget/location_info.dart';

class LocationView extends StatelessWidget {
  final LocationModel locationModel;
  const LocationView({super.key, required this.locationModel});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColor.lighterGray,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 300.h,
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                locationModel.image,
                fit: BoxFit.cover,
              )),
            ),
            SliverToBoxAdapter(
                child: LocationViewBody(
              locationModel: locationModel,
            ))
          ],
        ),
      ),
    );
  }
}
