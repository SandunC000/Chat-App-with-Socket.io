import 'package:chat_app/core/util/app_colors.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController msgInputController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColor.colorSecondary,
      body: Container(
        child: Column(
          children: [
            Expanded(flex: 6, child: Container()),
            Expanded(child: Container(
              color: AppColor.colorRed,
              child: TextField(
                controller: msgInputController,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
