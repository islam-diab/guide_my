part of '../auth_view.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: "Welcome to ",
            style: AppTextStyles.font30SemiBoldBlack,
          ),
          TextSpan(
            text: "Guide My!",
            style: AppTextStyles.font30SemiBoldPurple,
          ),
        ],
      ),
    );
  }
}
