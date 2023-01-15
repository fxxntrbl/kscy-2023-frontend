import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:kscy_2023_frontend/pages/home/daily.dart';
import 'package:kscy_2023_frontend/utils/daily_value.dart';
import 'package:kscy_2023_frontend/widgets/date.dart';
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
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: DateWidget(
                lectureNum: 5,
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Expanded(
              child: TimeLineLayout(
                builder: (index) {
                  return Column(children: [
                    const SizedBox(
                      height: 36,
                    ),
                    DailyPage(index: index)
                  ]);
                },
                titleBuilder: (index) {
                  return Tuple2("Day ${index + 1}", getDailyValue(2));
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
