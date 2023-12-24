import 'package:chat_app/features/presentation/views/chat_view/chat_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  static const String CHAT_VIEW = "CHAT_VIEW";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name){
      case Routes.CHAT_VIEW:
        return PageTransition(child: const ChatView(), type: PageTransitionType.rightToLeft);



      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("Invalid Route"),
            ),
          ),
        );
    }
  }
}