import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kscy_2023_frontend/utils/animated_value.dart';
import 'package:tuple/tuple.dart';

class TimeLineLayout extends StatefulWidget {
  final double pointXGap;
  final int count;
  final Color color;
  final Widget Function(int index) builder;
  final double paddingHorizontal;

  final Tuple2<String, String> Function(int index) titleBuilder;

  const TimeLineLayout({
    required this.builder,
    required this.titleBuilder,
    required this.count,
    this.color = const Color(0xFFcccccc),
    this.pointXGap = 20,
    this.paddingHorizontal = 40,
    Key? key,
  }) : super(key: key);

  @override
  State<TimeLineLayout> createState() => _TimeLineLayoutState();
}

class _TimeLineLayoutState extends State<TimeLineLayout>
    with SingleTickerProviderStateMixin {
  late AnimatedValue<double> pos;
  Map<int, Widget> cachedWidget = {};
  Map<int, Tuple2<String, String>> cachedTitle = {};

  @override
  void initState() {
    pos = AnimatedValue(
        initialValue: 0,
        duration: const Duration(milliseconds: 600),
        curve: Curves.ease,
        vsync: this);
    pos.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pos.dispose();
    super.dispose();
  }

  void getTwoPages() {
    int firstIndex = pos.value.floor();
    if (!cachedWidget.containsKey(firstIndex)) {
      cachedWidget[firstIndex] = widget.builder(firstIndex);
      cachedTitle[firstIndex] = widget.titleBuilder(firstIndex);
    }
    if (!cachedWidget.containsKey(firstIndex + 1)) {
      cachedWidget[firstIndex + 1] = widget.builder(firstIndex + 1);
      cachedTitle[firstIndex + 1] = widget.titleBuilder(firstIndex + 1);
    }
  }

  Widget buildPage(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cachedTitle[index]!.item1,
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    cachedTitle[index]!.item2,
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "커리큘럼 수정",
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "AI가 생성된 강좌를 수정할 수 있어요",
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Expanded(child: cachedWidget[index]!),
      ],
    );
  }

  bool isDragging = false;
  double dragStartValue = 0;
  double dragStartPosX = 0;

  @override
  Widget build(BuildContext context) {
    getTwoPages();
    int firstIndex = pos.value.floor();

    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onHorizontalDragStart: (details) {
            isDragging = true;
            dragStartValue = pos.value;
            print(isDragging);
            pos.setValueAsInitial(pos.value, skipEvent: true);
            dragStartPosX = details.localPosition.dx;
          },
          onHorizontalDragUpdate: (details) {
            print("drag update");
            double diff = details.localPosition.dx - dragStartPosX;
            double newValue = min(widget.count - 1,
                max(0, dragStartValue - diff / constraints.maxWidth));

            pos.setValueAsInitial(newValue);
          },
          onHorizontalDragEnd: (details) {
            isDragging = false;
            if (details.velocity.pixelsPerSecond.dx.abs() > 10) {
              double newValue = min(
                  widget.count - 1,
                  max(
                      0,
                      dragStartValue.floorToDouble() -
                          details.velocity.pixelsPerSecond.dx.sign));

              pos.value = newValue;
            } else {
              double newValue =
                  min(widget.count - 1, max(0, pos.value.roundToDouble()));
              pos.value = newValue;
            }
          },
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  width: constraints.maxWidth,
                  child: TimerLineGraphic(
                    pointXGap: widget.pointXGap,
                    count: widget.count,
                    color: widget.color,
                    paddingHorizontal: widget.paddingHorizontal,
                    pos: pos.value,
                  ),
                ),
                const SizedBox(height: 15),
                Expanded(
                  child: LayoutBuilder(builder: (context, innerConstraints) {
                    return Stack(
                      children: [
                        Positioned(
                          left: (pos.value.truncate() - pos.value) *
                              constraints.maxWidth,
                          child: SizedBox(
                            width: constraints.maxWidth,
                            height: innerConstraints.maxHeight,
                            child: buildPage(firstIndex),
                          ),
                        ),
                        Positioned(
                          left: (1 + pos.value.truncate() - pos.value) *
                              constraints.maxWidth,
                          child: SizedBox(
                            width: constraints.maxWidth,
                            height: innerConstraints.maxHeight,
                            child: buildPage(firstIndex + 1),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class TimerLineGraphic extends StatelessWidget {
  final double pointXGap;
  final Color color;
  final int count;
  final double paddingHorizontal;
  final double pos;

  const TimerLineGraphic(
      {required this.count,
      required this.pos,
      required this.pointXGap,
      required this.color,
      required this.paddingHorizontal,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ClipRect(
        child: SizedBox(
          width: constraints.maxWidth,
          height: 12,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                width: constraints.maxWidth,
                color: color,
                height: 2,
              ),
              ...List<Widget>.generate(
                count,
                (index) => Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: color, width: 2),
                    ),
                    width: 8,
                    height: 8,
                  ),
                  left: (index - pos) * pointXGap + paddingHorizontal,
                ),
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                    border: Border.all(color: color, width: 2),
                  ),
                  width: 12,
                  height: 12,
                ),
                left: paddingHorizontal,
              ),
            ],
          ),
        ),
      );
    });
  }
}
