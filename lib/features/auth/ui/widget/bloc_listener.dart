import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_my/core/helper/extensions.dart';
import 'package:guide_my/core/routing/routes.dart';
import 'package:guide_my/features/auth/logic/auth_cubit.dart';
import 'package:guide_my/features/auth/logic/auth_state.dart';

class AuthBlocListener extends StatelessWidget {
  const AuthBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) => current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(success: (data) {
          context.pushNamedAndRemoveUntil(Routes.homeScreen,
              predicate: (_) => false);
        }, error: (error) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              icon: const Icon(
                Icons.error,
                color: Colors.red,
                size: 32,
              ),
              content: Text(
                error,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: const Text(
                    'Got it',
                  ),
                ),
              ],
            ),
          );
        });
      },
      child: const SizedBox.shrink(),
    );
  }
}
