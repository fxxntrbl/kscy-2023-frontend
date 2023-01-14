import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:kscy_2023_frontend/widgets/lecture.dart';
import 'package:tuple/tuple.dart';

import '../widgets/TimeLineLayout.dart';
import '../widgets/topbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopBar(),
            const SizedBox(height: 50),
            Expanded(
              child: TimeLineLayout(
                builder: (index) {
                  return Text("Hello $index");
                },
                titleBuilder: (index) {
                  return Tuple2("Day${index + 1}", "Day ${index + 1} 내용입니다.");
                },
                pointXGap: 54,
                paddingHorizontal: 34,
                count: 7,
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
