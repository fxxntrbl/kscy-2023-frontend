import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchTag extends StatelessWidget {
  const SearchTag(
      {Key? key,
      required this.icon,
      required this.title,
      required this.enabled})
      : super(key: key);

  final IconData icon;
  final String title;
  final bool enabled;

  Color getBackgroundColor() {
    if (enabled) {
      return Colors.black;
    }
    return Colors.white;
  }

  Color getBorderColor() {
    if (enabled) {
      return Color.fromRGBO(0, 0, 0, 1);
    }
    return Color.fromRGBO(0, 0, 0, 0.1);
  }

  Color getTextColor() {
    if (enabled) {
      return Colors.white;
    }
    return Color.fromRGBO(0, 0, 0, 0.5);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: this.getBorderColor()),
          borderRadius: BorderRadius.circular(99),
          color: getBackgroundColor()),
      child: Row(
        children: [
          Icon(
            icon,
            size: 16,
            color: this.getTextColor(),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 14,
                color: getTextColor(),
                letterSpacing: -0.4,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
