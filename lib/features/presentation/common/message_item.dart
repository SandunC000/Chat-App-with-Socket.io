import 'package:chat_app/core/util/app_colors.dart';
import 'package:flutter/material.dart';

class MessageItem extends StatefulWidget {
  final bool sentByMe;
  final String message;

  const MessageItem({super.key, required this.sentByMe, required this.message});

  @override
  State<MessageItem> createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.sentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.sentByMe ? AppColor.colorPrimary : Colors.white,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(widget.message,
                style: TextStyle(
                    color: widget.sentByMe ? Colors.white : AppColor.colorPrimary,
                    fontSize: 18)),
            const SizedBox(
              width: 5
            ),
            Text("1.10 AM",
                style: TextStyle(
                    color: (widget.sentByMe ? Colors.white : AppColor.colorPrimary)
                        .withOpacity(0.7),
                    fontSize: 18))
          ],
        ),
      ),
    );
  }
}
