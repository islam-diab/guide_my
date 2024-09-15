part of '../add_location_screen.dart';

class AddLocationButton extends StatelessWidget {
  const AddLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: BlocBuilder<LocationCubit, LocationState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return AppOutlineButton(
            onPressed: () {
              if (context
                  .read<LocationCubit>()
                  .formKey
                  .currentState!
                  .validate()) {
                context.read<LocationCubit>().addLocation();
                context.pop();
              }
            },
            isSelected: true,
            child: Text(
              'Add Location',
              style: AppTextStyles.font16SemiBold.copyWith(
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
