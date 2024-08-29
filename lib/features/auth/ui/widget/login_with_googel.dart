part of '../auth_view.dart';

class LoginWithGoogel extends StatelessWidget {
  const LoginWithGoogel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppOutlineButton(

        onPressed: () {
          context.read<AuthCubit>().loginWithGoogle();
        },
        isSelected: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.google,
            ),
            horizontalSpace(10),
            const Text(
              'Login with Google',
              style: AppTextStyles.font16SemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
