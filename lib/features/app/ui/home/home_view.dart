import 'package:flutter/material.dart';
import 'package:guide_my/core/widget/text_form_field.dart';
import 'package:guide_my/features/app/ui/home/widget/home_container_blue.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              AppTextFormField(
                controller: TextEditingController(),
                hintText: 'Search',
                textInputAction: TextInputAction.search,
              ),
              const HomeContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
