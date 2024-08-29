import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/features/home/logic/app_cubit.dart';
import 'package:guide_my/features/home/logic/app_state.dart';
import 'package:guide_my/features/home/widget/position_list/position_list_view.dart';

class PositionBlocBuilder extends StatelessWidget {
  const PositionBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      buildWhen: (previous, current) =>
          current is PositionSuccess || current is PositionError,
      builder: (context, state) {
        return state.maybeWhen(
          positionSuccess: (doctorModel) {
            return setupSucces(doctorModel);
          },
          positionError: (error) {
            return setupError(error);
          },
          positionLoading: () {
            return const Text("loading...");
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
  return PositionListView(
    positionModel: doctorList,
  );
}

Widget setupError(String error)  {
  return  Text(error);
}
