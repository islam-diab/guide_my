import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guide_my/features/home/logic/home_cubit.dart';

part 'widget/profile_pic.dart';
part 'widget/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              press: () => {},
            ),
            ProfileMenu(
              text: "Notifications",
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
