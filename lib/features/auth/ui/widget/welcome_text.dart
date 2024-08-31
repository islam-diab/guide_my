part of '../auth_view.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Welcome to ",
            style: AppTextStyles.font18WhiteNormal,
          ),
          const TextSpan(
            text: "Guide My!",
            style: AppTextStyles.font30SemiBoldPurple,
          ),
        ],
      ),
    );
  }
}
