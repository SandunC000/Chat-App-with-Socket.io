import 'package:chat_app/features/presentation/views/splash_view/splach_view.dart';
import 'package:flutter/material.dart';

import 'core/util/navigation_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.generateRoute,
      home: SplashView(),
    );
  }
}

