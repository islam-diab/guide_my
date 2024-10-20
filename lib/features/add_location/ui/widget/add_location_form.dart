part of '../add_location_screen.dart';

class AddLocationForm extends StatelessWidget {
  const AddLocationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AddLocationCubit>().formKey,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: AppDropdownButton(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'برداء اختر نوع الخدمة';
                    }
                    return null;
                  },
                ),
              ),
              horizontalSpace(20.w),
              const ImageView(),
            ],
          ),
          verticalSpace(20.h),
          AppTextFormField(
            controller: context.read<AddLocationCubit>().nameController,
            hintText: 'الاسم',
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'برجاء ادخال اسم الموقع';
              }
              return null;
            },
          ),
          verticalSpace(20.h),
          AppTextFormField(
            controller: context.read<AddLocationCubit>().phoneController,
            hintText: 'رقم الهاتف',
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'برجاء ادخال رقم الهاتف';
              }
              return null;
            },
          ),
          verticalSpace(20.h),
          AppTextFormField(
            controller: context.read<AddLocationCubit>().locationController,
            hintText: 'العنوان',
            keyboardType: TextInputType.streetAddress,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'برجاء ادخال العنوان';
              }
              return null;
            },
          ),
          verticalSpace(20.h),
          AppTextFormField(
            controller: context.read<AddLocationCubit>().mapController,
            hintText: 'لينك الموقع من الخريطة',
            keyboardType: TextInputType.streetAddress,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'برجاء ادخال لينك الموقع من الخريطة';
              }
              return null;
            },
          ),
          verticalSpace(20.h),
          AppTextFormField(
            controller: context.read<AddLocationCubit>().descriptionController,
            hintText: 'الوصف',
            keyboardType: TextInputType.streetAddress,
            textInputAction: TextInputAction.done,
          ),
          verticalSpace(50.h),
          const AddLocationButton(),
        ],
      ),
    );
  }
}
