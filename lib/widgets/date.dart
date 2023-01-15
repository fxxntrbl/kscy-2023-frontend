import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({Key? key, required this.lectureNum}) : super(key: key);

  final int lectureNum;

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  String getDateTime() {
    return DateFormat('M월 dd일 (E)', 'ko').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          getDateTime(),
          style: TextStyle(
              fontSize: 20, letterSpacing: -0.4, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          "${widget.lectureNum}개의 과제가 있습니다.",
          style: TextStyle(
              fontSize: 24, letterSpacing: -0.4, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
