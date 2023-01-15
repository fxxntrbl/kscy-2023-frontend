import 'package:flutter/material.dart';
import 'package:kscy_2023_frontend/widgets/chat.dart';

class StudyGroupDetailScreen extends StatefulWidget {
  const StudyGroupDetailScreen({Key? key}) : super(key: key);

  @override
  State<StudyGroupDetailScreen> createState() => _StudyGroupScreenState();
}

class _StudyGroupScreenState extends State<StudyGroupDetailScreen> {
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
                      Icons.chevron_left_rounded,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    child: Row(children: [
                      Image.asset(
                        'assets/group1.png',
                        width: 44,
                        height: 44,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Flutter 공부방",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 0, 0, 1),
                              letterSpacing: -0.4,
                            ),
                          ),
                        ],
                      )
                    ]),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Image.asset("assets/chatmockup.png"),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
