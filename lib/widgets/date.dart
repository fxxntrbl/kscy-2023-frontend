import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({super.key});

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  String getDateTime() {
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(getDateTime()), Text("data")],
    );
  }
}
