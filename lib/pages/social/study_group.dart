import 'package:flutter/material.dart';
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
              const SizedBox(height: 30),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.keyboard_arrow_left_rounded),
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    "내 스터디그룹",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      letterSpacing: -0.4,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      ChatWidget(
                        title: "봇치더락앱개발자모임",
                        desc: "안스 너무 무거워요 ㅋ큐 ・ 6시간 전",
                        imageIndex: 2,
                      ),
                      const SizedBox(height: 20),
                      ChatWidget(
                        title: "봇치더락앱개발자모임",
                        desc: "안스 너무 무거워요 ㅋ큐 ・ 6시간 전",
                        imageIndex: 2,
                      ),
                      const SizedBox(height: 20),
                      ChatWidget(
                        title: "봇치더락앱개발자모임",
                        desc: "안스 너무 무거워요 ㅋ큐 ・ 6시간 전",
                        imageIndex: 2,
                      ),
                      const SizedBox(height: 20),
                      ChatWidget(
                        title: "봇치더락앱개발자모임",
                        desc: "안스 너무 무거워요 ㅋ큐 ・ 6시간 전",
                        imageIndex: 2,
                      ),
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
