import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kscy_2023_frontend/widgets/lecture.dart';

class DailyPage extends StatelessWidget {
  DailyPage({Key? key, required this.index}) : super(key: key);

  final int index;

  final scrollcontroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        controller: this.scrollcontroller,
        isAlwaysShown: false,
        child: SingleChildScrollView(
          controller: this.scrollcontroller,
          padding: EdgeInsets.only(bottom: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "오늘 할당된 과제",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      letterSpacing: -0.4),
                ),
              ),
              const SizedBox(height: 16),
              LectureCard(
                  title: "title",
                  description: "description",
                  day: index + 3,
                  userPref: true,
                  complete: true),
              const SizedBox(height: 16),
              LectureCard(
                  title: "title",
                  description: "description",
                  day: index + 3,
                  userPref: false,
                  complete: false),
              const SizedBox(height: 16),
              LectureCard(
                  title: "title",
                  description: "description",
                  day: index + 3,
                  userPref: false,
                  complete: false),
              const SizedBox(height: 16),
              LectureCard(
                  title: "title",
                  description: "description",
                  day: index + 3,
                  userPref: false,
                  complete: false),
              const SizedBox(height: 16),
              LectureCard(
                  title: "title",
                  description: "description",
                  day: index + 3,
                  userPref: false,
                  complete: false)
            ],
          ),
        ),
      ),
    );
  }
}
