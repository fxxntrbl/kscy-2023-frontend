import 'package:flutter/material.dart';
import 'package:kscy_2023_frontend/pages/social/study_group_detail.dart';
import 'package:kscy_2023_frontend/widgets/chat.dart';

class StudyGroupScreen extends StatefulWidget {
  const StudyGroupScreen({Key? key}) : super(key: key);

  @override
  State<StudyGroupScreen> createState() => _StudyGroupScreenState();
}

class _StudyGroupScreenState extends State<StudyGroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_left_rounded,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "스터디 그룹",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      letterSpacing: -0.4,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ChatWidget(
                        title: "Flutter 공부방",
                        desc: "Scaffold에서 이 에러 왜 나나요ㅠ ・ 2시간 전",
                        imageIndex: 1,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const StudyGroupDetailScreen(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      ChatWidget(
                        title: "봇치더락앱개발자모임",
                        desc: "안스 너무 무거워요 ㅋ큐 ・ 6시간 전",
                        imageIndex: 2,
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
