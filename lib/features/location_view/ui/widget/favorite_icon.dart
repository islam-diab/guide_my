import 'package:flutter/material.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavoriteIcon extends StatefulWidget {
  final LocationModel locationModel;
  const FavoriteIcon({super.key, required this.locationModel});

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

bool isFavorite = false;

class _FavoriteIconState extends State<FavoriteIcon> {
  @override
  Widget build(BuildContext context) {
    Box<LocationModel> location = Hive.box<LocationModel>(HiveKeys.faverote);
    if (location.containsKey(widget.locationModel.id)) {
      isFavorite = true;
    } else {
      isFavorite = false;
    }
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });

        if (isFavorite) {
          location.put(widget.locationModel.id, widget.locationModel);
       
        } else {
          location.delete(widget.locationModel.id);
        }
        showSnackBar(context);
      },
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Colors.red : Colors.grey,
      ),
    );
  }

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      elevation: 6.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      backgroundColor: Colors.red,
      content: Text(
        isFavorite ? 'تمت الاضافة للمفضلات' : 'تم الحذف من المفضلات',
      ),
    ));
  }
}
