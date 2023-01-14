import 'package:flutter/material.dart';

class ChatSuggestion extends StatelessWidget {
  const ChatSuggestion(
      {Key? key,
      required this.title,
      required this.description,
      required this.minNum,
      required this.maxNum,
      required this.lastOnline})
      : super(key: key);

  final String title;
  final String description;
  final int minNum;
  final int maxNum;
  final int lastOnline;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xFFF6F6F6),
          border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.1)),
          borderRadius: BorderRadius.circular(16)),
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/group1.png',
              width: 54,
              height: 54,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      letterSpacing: -0.4),
                ),
                const SizedBox(height: 6),
                Text(
                  this.description,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      letterSpacing: -0.4,
                      color: Color.fromRGBO(0, 0, 0, 0.6)),
                )
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Icon(Icons.group_rounded,
                size: 16, color: Color.fromRGBO(0, 0, 0, 0.4)),
            const SizedBox(width: 6),
            Text(
              "${this.minNum}명 / ${this.maxNum}명",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  letterSpacing: -0.4,
                  color: Color.fromRGBO(0, 0, 0, 0.4)),
            ),
            const SizedBox(width: 12),
            Icon(Icons.check_circle_outline_rounded,
                size: 14, color: Color.fromRGBO(0, 0, 0, 0.4)),
            const SizedBox(width: 6),
            Text(
              "${this.lastOnline}분 전 온라인",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  letterSpacing: -0.4,
                  color: Color.fromRGBO(0, 0, 0, 0.4)),
            ),
          ],
        )
      ]),
    );
  }
}
