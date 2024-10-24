import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/core/helper/extensions.dart';
import 'package:guide_my/core/helper/spase.dart';
import 'package:guide_my/core/routing/routes.dart';
import 'package:guide_my/core/theming/app_color.dart';
import 'package:guide_my/core/theming/app_text_styles.dart';
import 'package:guide_my/core/widget/app_out_line_button.dart';
import 'package:guide_my/core/widget/text_form_field.dart';
import 'package:guide_my/features/add_location/logic/add_location_cubit.dart';
import 'package:guide_my/features/home/data/model/category_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'widget/app_dropdown_button.dart';
part 'widget/add_location_form.dart';
part 'widget/image_view.dart';
part 'widget/add_location_button.dart';

class AddLocationScreen extends StatelessWidget {
  const AddLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColor.primary,
            title: const Text(
              'اضافة موقع جديد',
              style: AppTextStyles.font25BoldWith,
            ),
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            centerTitle: true,
          ),
          body: const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: AddLocationForm(),
            ),
          ),
        ),
      ),
    );
  }
}
