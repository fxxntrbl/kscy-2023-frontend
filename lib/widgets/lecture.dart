import 'package:flutter/material.dart';

class LectureCard extends StatelessWidget {
  const LectureCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.day,
      required this.userPref,
      required this.complete})
      : super(key: key);

  final String title;
  final String description;
  final int day;
  final bool userPref;
  final bool complete;

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Row(
              children: [
                Icon(complete ? Icons.check_rounded : Icons.close_rounded,
                    size: 20, color: Color(complete ? 0x8829C629 : 0x88FF0000)),
                const SizedBox(width: 4),
                Text(
                  complete ? "완료 " : "미완료",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      letterSpacing: -0.4,
                      color: Color(complete ? 0x8829C629 : 0x88FF0000)),
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
              "Day ${this.day}까지 수강 권장",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  letterSpacing: -0.4,
                  color: Color.fromRGBO(0, 0, 0, 0.4)),
            ),
            const SizedBox(width: 12),
            Icon(
                (userPref)
                    ? Icons.person_outline_rounded
                    : Icons.smart_toy_outlined,
                size: 16,
                color: Color.fromRGBO(0, 0, 0, 0.4)),
            const SizedBox(width: 6),
            Text(
              (userPref) ? "경훈님이 선택한 강좌에요" : "AI가 추천한 맞춤 과제에요",
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
