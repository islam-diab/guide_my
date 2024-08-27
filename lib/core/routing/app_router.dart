import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/core/routing/routes.dart';
import 'package:guide_my/features/auth/ui/auth_view.dart';
import 'package:guide_my/features/app/logic/app_cubit.dart';
import 'package:guide_my/features/app/ui/app_view.dart';

import '../../features/auth/logic/auth_cubit.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final argument = settings.arguments;

    switch (settings.name) {
      case Routes.authScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const AuthView(),
          ),
        );

      case Routes.appScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AppCubit()..getCategories(),
            child: const AppView(),
          ),
        );

      default:
        return null;
    }
  }
}
