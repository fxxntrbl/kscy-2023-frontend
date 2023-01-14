import 'package:flutter/material.dart';

class LectureCard extends StatelessWidget {
  const LectureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xFFFAFAFA),
          border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.1)),
          borderRadius: BorderRadius.circular(16)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Flutter 주요 위젯",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      letterSpacing: -0.4),
                ),
                const SizedBox(height: 6),
                Text(
                  "Scaffold, Container 등 주요 위젯 배우기",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      letterSpacing: -0.4,
                      color: Color.fromRGBO(0, 0, 0, 0.6)),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.close_rounded, size: 20, color: Color(0x88FF0000)),
                const SizedBox(width: 4),
                Text(
                  "미완료",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      letterSpacing: -0.4,
                      color: Color(0x88FF0000)),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Icon(Icons.info_outline_rounded,
                size: 16, color: Color.fromRGBO(0, 0, 0, 0.4)),
            const SizedBox(width: 6),
            Text(
              "Day 4까지 수강 권장",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  letterSpacing: -0.4,
                  color: Color.fromRGBO(0, 0, 0, 0.4)),
            ),
            const SizedBox(width: 12),
            Icon(Icons.smart_toy_outlined,
                size: 16, color: Color.fromRGBO(0, 0, 0, 0.4)),
            const SizedBox(width: 6),
            Text(
              "AI가 추천한 맞춤 강좌에요",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  letterSpacing: -0.4,
                  color: Color.fromRGBO(0, 0, 0, 0.4)),
            ),
          ],
        )
      ]),
    );
  }
}
