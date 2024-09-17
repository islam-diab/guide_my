import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/features/home/logic/home_cubit.dart';
import 'package:guide_my/features/home/logic/home_state.dart';
import 'package:guide_my/features/home/widget/location_list/location_list_view.dart';
import 'package:guide_my/features/home/widget/location_list/location_shimmer.dart';

class LocationBlocBuilder extends StatelessWidget {
  const LocationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is LocationSuccess ||
          current is LocationError ||
          current is HomeLoading,
      builder: (context, state) {
        return state.maybeWhen(
          locationSuccess: (doctorModel) {
            return setupSucces(doctorModel);
          },
          locationError: (error) {
            return setupError(error);
          },
          homeLoading: () {
            return const LocationShimmer();
          },
          orElse: () {
            return setupError('orElse');
          },
        );
      },
    );
  }
}

Widget setupSucces(doctorList) {
  return LocationListView(
    locationModel: doctorList,
  );
}

Widget setupError(String error) {
  return Text(error);
}
