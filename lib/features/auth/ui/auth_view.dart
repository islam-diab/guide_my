import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_my/core/helper/app_assets.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/core/helper/spase.dart';
import 'package:guide_my/core/theming/app_text_styles.dart';
import 'package:guide_my/core/widget/app_out_line_button.dart';
import 'package:guide_my/features/auth/logic/auth_cubit.dart';
import 'package:guide_my/features/auth/ui/widget/bloc_listener.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'widget/welcome_text.dart';
part 'widget/owner_or_user.dart';
part 'widget/container_with_opacity.dart';
part 'widget/login_with_googel.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerWithOpacity(
        child: Column(
          children: [
            const Expanded(child: SizedBox.shrink()),
            const WelcomeText(),
            verticalSpace(20),
            Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
              ),
              child: Column(
                children: [
                  const Text(
                    'Are you',
                    style: AppTextStyles.font30SemiBoldBlack,
                  ),
                  verticalSpace(16),
                  const OwnerOrUser(),
                  verticalSpace(20),
                  const LoginWithGoogel(),
                  const AuthBlocListener(),
                ],
              ),
            ),
            const Expanded(child: SizedBox.shrink()),
          ],
        ),
      ),
    );
  }
}
