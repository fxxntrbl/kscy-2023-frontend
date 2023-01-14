import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "검색어를 입력해주세요",
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Icon(Icons.search_rounded),
          ),
          iconColor: Color.fromRGBO(0, 0, 0, 0.5),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(99)),
            borderSide:
                BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(99)),
            borderSide:
                BorderSide(color: Color.fromRGBO(0, 0, 0, 0.5), width: 1),
          ),
        ),
        controller: this._textController,
        onChanged: (v) {
          setState(() {});
        },
      ),
    );
  }
}
