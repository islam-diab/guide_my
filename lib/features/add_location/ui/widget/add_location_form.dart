part of '../add_location_screen.dart';

class AddLocationForm extends StatelessWidget {
  const AddLocationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LocationCubit>().formKey,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: AppDropdownButton(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select category';
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
            controller: context.read<LocationCubit>().nameController,
            hintText: 'Location Name',
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter location name';
              }
              return null;
            },
          ),
          verticalSpace(20.h),
          AppTextFormField(
            controller: context.read<LocationCubit>().phoneController,
            hintText: 'Phone',
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter phone number';
              }
              return null;
            },
          ),
          verticalSpace(20.h),
          AppTextFormField(
            controller: context.read<LocationCubit>().locationController,
            hintText: 'Location Address',
            keyboardType: TextInputType.streetAddress,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter location address';
              }
              return null;
            },
          ),
          verticalSpace(20.h),
          AppTextFormField(
            controller: context.read<LocationCubit>().mapController,
            hintText: 'Location In Google Maps',
            keyboardType: TextInputType.streetAddress,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter location in google maps';
              }
              return null;
            },
          ),
          verticalSpace(20.h),
          AppTextFormField(
            controller: context.read<LocationCubit>().descriptionController,
            hintText: 'Description',
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
