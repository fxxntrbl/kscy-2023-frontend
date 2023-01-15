import 'package:flutter/material.dart';
import 'package:kscy_2023_frontend/pages/blank.dart';
import 'package:kscy_2023_frontend/widgets/lecture.dart';
import 'package:kscy_2023_frontend/pages/home.dart';
import 'package:kscy_2023_frontend/pages/social.dart';
import 'package:kscy_2023_frontend/widgets/topbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: 1.0,
        ),
        child: child!,
      ),
      theme: ThemeData(
        fontFamily: 'Pretendard',
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // 탭을 클릭했을떄 지정한 페이지로 이동
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          TopBar(),
          const SizedBox(
            height: 36,
          ),
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: [HomePage(), SocialPage(), Blank(), Blank()],
            ),
          ),
        ],
      )),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFAFAFA),
          border: Border(
              top: BorderSide(width: 1.0, color: Color.fromRGBO(0, 0, 0, 0.1))),
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xFFF6f6f6),
          iconSize: 28,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "홈"),
            BottomNavigationBarItem(
                icon: Icon(Icons.groups_rounded), label: "그룹"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: "검색"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded), label: "프로필"),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Color.fromRGBO(0, 0, 0, 0.3),
          unselectedFontSize: 12,
          selectedFontSize: 12,
        ),
      ),
    );
  }
}
