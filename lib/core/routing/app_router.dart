import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/core/routing/routes.dart';
import 'package:guide_my/features/add_location/logic/add_location_cubit.dart';
import 'package:guide_my/features/add_location/ui/add_location_screen.dart';
import 'package:guide_my/features/auth/ui/auth_view.dart';
import 'package:guide_my/features/home/data/model/location_model.dart';
import 'package:guide_my/features/home/logic/home_cubit.dart';
import 'package:guide_my/features/app/ui/app_view.dart';
import 'package:guide_my/features/location_view/widget/location_view.dart';

import '../../features/auth/logic/auth_cubit.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final argument = settings.arguments;

    switch (settings.name) {
      case Routes.authScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const AuthView(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit()..fetchAllData(),
            child: const AppView(),
          ),
        );
      case Routes.addLocationScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AddLocationCubit(),
            child: const AddLocationScreen(),
          ),
        );
      case Routes.locationView:
        return MaterialPageRoute(
          builder: (_) => LocationView(
            locationModel: argument as LocationModel,
          ),
        );

      default:
        return null;
    }
  }
}
