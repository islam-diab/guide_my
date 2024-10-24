part of '../location_view.dart';

class LocationInfo extends StatelessWidget {
  final LocationModel locationModel;
  const LocationInfo({super.key, required this.locationModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CusttomListTile(
              onTap: () =>
                  AppUrl.openLocation(locationModel.locationInGoogleMaps),
              title: 'العنوان',
              subtitle: locationModel.location),
          const Divider(
            indent: 20,
            endIndent: 20,
          ),
          CusttomListTile(
              onTap: () {
                AppUrl.openCall(locationModel.phone);
              },
              title: 'رقم الهاتف',
              subtitle: locationModel.phone),
          const Divider(
            indent: 20,
            endIndent: 20,
          ),
          CusttomListTile(
              onTap: () {
                AppUrl.openWhatsApp(locationModel.phone);
              },
              title: 'التواصل عن طريق الوتس',
              subtitle: locationModel.phone),
          const Divider(
            indent: 20,
            endIndent: 20,
          ),
          CusttomListTile(
              onTap: () {},
              title: 'التفاصيل',
              subtitle: locationModel.description),
        ],
      ),
    );
  }
}
