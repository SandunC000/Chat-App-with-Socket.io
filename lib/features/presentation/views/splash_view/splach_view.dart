import 'package:chat_app/core/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/util/app_images.dart';
import '../../../../core/util/navigation_routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    super.initState();
    load();
  }

  void load() async {
    await Future.delayed(const Duration(seconds: 1));
    loadNextScreen();
  }

  void loadNextScreen() {
    Navigator.pushReplacementNamed(context, Routes.CHAT_VIEW);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorPrimary,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: context.width,
            height: context.height,
            color: AppColor.colorPrimary  ,
          ),
          Image.asset(
            AppImages.logo,
            width: context.width * 0.4,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
