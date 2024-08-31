import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/core/helper/spase.dart';
import 'package:guide_my/core/theming/app_text_styles.dart';
import 'package:guide_my/core/widget/app_out_line_button.dart';
import 'package:guide_my/core/widget/text_form_field.dart';
import 'package:guide_my/features/home/data/model/category_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'widget/app_dropdown_button.dart';

class AddLocationScreen extends StatelessWidget {
  const AddLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Location'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const AppDropdownButton(),
                verticalSpace(20.h),
                AppTextFormField(
                  controller: TextEditingController(),
                  hintText: 'Location Name',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                verticalSpace(20.h),
                AppTextFormField(
                  controller: TextEditingController(),
                  hintText: 'Phone',
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                ),
                verticalSpace(20.h),
                AppTextFormField(
                  controller: TextEditingController(),
                  hintText: 'Location Address',
                  keyboardType: TextInputType.streetAddress,
                  textInputAction: TextInputAction.next,
                ),
                verticalSpace(20.h),
                AppTextFormField(
                  controller: TextEditingController(),
                  hintText: 'Location In Google Maps',
                  keyboardType: TextInputType.streetAddress,
                  textInputAction: TextInputAction.next,
                ),
                verticalSpace(20.h),
                AppTextFormField(
                  controller: TextEditingController(),
                  hintText: 'Description',
                  keyboardType: TextInputType.streetAddress,
                  textInputAction: TextInputAction.done,
                ),
                verticalSpace(50.h),
                SizedBox(
                  width: double.infinity,
                  height: 50.h,
                  child: AppOutlineButton(
                    onPressed: () {},
                    isSelected: true,
                    text: 'Add Location',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
