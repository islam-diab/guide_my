part of '../add_location_screen.dart';

class AddLocationBlocListener extends StatelessWidget {
  const AddLocationBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LocationCubit, LocationState>(
      listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
          
      if (state is Success) {
        Navigator.pop(context);
      }
    });
  }
}
