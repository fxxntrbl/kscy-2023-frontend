import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget(
      {Key? key,
      required this.title,
      required this.desc,
      required this.imageIndex})
      : super(key: key);

  final String title;
  final String desc;
  final int imageIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Image.asset(
          'assets/group$imageIndex.png',
          width: 56,
          height: 56,
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(0, 0, 0, 0.6),
                letterSpacing: -0.4,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              desc,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 0, 0, 0.4),
                letterSpacing: -0.4,
              ),
            )
          ],
        )
      ]),
    );
  }
}
