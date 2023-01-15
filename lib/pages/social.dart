import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kscy_2023_frontend/widgets/chat.dart';
import 'package:kscy_2023_frontend/widgets/search.dart';
import 'package:kscy_2023_frontend/widgets/search_tag.dart';
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
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                            fontSize: 20,
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
                            fontSize: 20,
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
            SearchBar(),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SearchTag(
                      icon: Icons.stacked_line_chart_rounded,
                      title: "누적",
                      enabled: true,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SearchTag(
                      icon: Icons.timer_outlined,
                      title: "시간",
                      enabled: false,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SearchTag(
                      icon: Icons.event_outlined,
                      title: "일간",
                      enabled: false,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SearchTag(
                      icon: Icons.date_range_outlined,
                      title: "주간",
                      enabled: false,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SearchTag(
                      icon: Icons.calendar_month_outlined,
                      title: "월간",
                      enabled: false,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ChatSuggestion(
                title: "title",
                description: "description",
                minNum: 4,
                maxNum: 8,
                lastOnline: 30),
            const SizedBox(
              height: 16,
            ),
            ChatSuggestion(
                title: "title",
                description: "description",
                minNum: 4,
                maxNum: 8,
                lastOnline: 30),
            const SizedBox(
              height: 16,
            ),
            ChatSuggestion(
                title: "title",
                description: "description",
                minNum: 4,
                maxNum: 8,
                lastOnline: 30),
          ],
        ),
      ),
    );
  }
}
