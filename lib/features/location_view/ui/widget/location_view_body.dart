part of '../location_view.dart';

class LocationViewBody extends StatelessWidget {
  final LocationModel locationModel;
  const LocationViewBody({super.key, required this.locationModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                locationModel.name,
                style: AppTextStyles.font30SemiBoldPurple
                    .copyWith(color: Colors.black),
              ),
              FavoriteIcon(
                locationModel: locationModel,
              ),
            ],
          ),
          verticalSpace(10),
          LocationInfo(locationModel: locationModel),
        ],
      ),
    );
  }
}
