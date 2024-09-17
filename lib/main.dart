import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_my/core/helper/app_constants.dart';
import 'package:guide_my/core/model/app_user.dart';
import 'package:guide_my/core/routing/app_router.dart';
import 'package:guide_my/core/routing/routes.dart';
import 'package:guide_my/features/home/data/model/category_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await Hive.initFlutter();

  Hive.registerAdapter(AppUserAdapter());
  await Hive.openBox<AppUser>(HiveKeys.appUser);

  Hive.registerAdapter(CategoryModelAdapter());
  await Hive.openBox<CategoryModel>(HiveKeys.category);

  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        initialRoute: _checkIfUserIsLoggedIn(),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}

String _checkIfUserIsLoggedIn() {
  final FirebaseAuth auth = FirebaseAuth.instance;
  User? user = auth.currentUser;
  if (user != null) {
    // User is signed in
    return Routes.homeScreen;
  } else {
    // No user is signed in
    return Routes.authScreen;
  }
}
