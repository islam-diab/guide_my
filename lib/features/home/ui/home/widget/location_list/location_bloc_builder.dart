import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
import 'package:guide_my/features/home/logic/home_cubit.dart';
import 'package:guide_my/features/home/logic/home_state.dart';
import 'package:guide_my/features/home/ui/home/location_list/location_list_view.dart';
import 'package:guide_my/features/home/ui/home/location_list/location_shimmer.dart';

class LocationBlocBuilder extends StatelessWidget {
  const LocationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is HomeSuccess ||
          current is LocationError ||
          current is HomeLoading,
      builder: (context, state) {
        return state.maybeWhen(
          homeSuccess: (doctorModel) {
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

Widget setupSucces(List<LocationModel> doctorList) {
  return LocationListView(
    locationModel: doctorList,
  );
}

Widget setupError(String error) {
  return SliverToBoxAdapter(child: Text(error));
}
