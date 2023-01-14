import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kscy_2023_frontend/widgets/chat.dart';
import '../widgets/topbar.dart';
import 'package:kscy_2023_frontend/widgets/chat_suggestion.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopBar(),
          const SizedBox(height: 36),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "내 스터디그룹",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          letterSpacing: -0.4),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                ChatWidget(
                    title: "Flutter 공부방",
                    desc: "Scaffold에서 이 에러 왜 나나요ㅠ ・ 2시간 전",
                    imageIndex: 1),
                const SizedBox(
                  height: 16,
                ),
                ChatWidget(
                    title: "봇치더락앱개발자모임",
                    desc: "안스 너무 무거워요 ㅋ큐 ・ 6시간 전",
                    imageIndex: 2)
              ],
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "그룹 찾아보기",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          letterSpacing: -0.4),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          ChatSuggestion(
              title: "title",
              description: "description",
              minNum: 4,
              maxNum: 8,
              lastOnline: 30)
        ],
      ),
    );
  }
}
