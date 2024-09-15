part of '../add_location_screen.dart';

class AddLocationButton extends StatelessWidget {
  const AddLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: BlocConsumer<AddLocationCubit, AddLocationState>(
        listener: (context, state) {
          if (state is Success) {
            context.pushNamedAndRemoveUntil(Routes.homeScreen,
                predicate: (context) => false);
          }
        },
        builder: (context, state) {
          if (state is Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return AppOutlineButton(
            onPressed: () {
              if (context
                  .read<AddLocationCubit>()
                  .formKey
                  .currentState!
                  .validate()) {
                context.read<AddLocationCubit>().addLocation();
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
