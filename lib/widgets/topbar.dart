import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24, right: 24, top: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "💻",
                style: TextStyle(fontSize: 36),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "와플러터샌즈",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "개발 / 앱 / Flutter",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        letterSpacing: -0.4),
                  )
                ],
              ),
              const SizedBox(width: 20),
              Icon(
                Icons.expand_more_rounded,
                size: 20,
                color: Color.fromRGBO(0, 0, 0, 0.5),
              )
            ],
          ),
          Image.asset(
            'assets/defaultpic.png',
            width: 44,
            height: 44,
          )
        ],
      ),
    );
  }
}
