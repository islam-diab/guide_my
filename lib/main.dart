import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:guide_my/core/routing/app_router.dart';
import 'package:guide_my/core/routing/routes.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: Routes.authScreen,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
