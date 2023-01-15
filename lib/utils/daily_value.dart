import 'package:flutter/material.dart';
import 'package:kscy_2023_frontend/widgets/lecture.dart';

List<String> dailyDesc = [
  "Dart 기초 - 1",
  "Dart 기초 - 2",
  "Dart 기초 - 3",
  "Flutter 기초 - 1",
  "Flutter 기초 - 2",
  "Flutter 심화 - 1",
  "Flutter 심화 - 2",
  "Flutter 심화 - 2",
  "Flutter 심화 - 2",
];

String getDailyValue(int index) {
  return dailyDesc[index];
}

int getNum(int idx) {
  int a = 0;
  for (int i = 0; i < pages[idx].length; ++i) {
    if (pages[idx][i] is LectureCard) a++;
  }
  return a;
}

List<List<dynamic>> pages = [
  [
    LectureCard(
        title: "Dart란?",
        description: "Dart 언어는 무엇인가?",
        day: 3,
        userPref: true,
        complete: true),
    const SizedBox(height: 16),
    LectureCard(
        title: "Dart 기초",
        description: "Dart 기초 문법",
        day: 3,
        userPref: false,
        complete: true),
  ],
  [
    LectureCard(
        title: "Dart 함수 - 1",
        description: "Dart 함수와 인자",
        day: 4,
        userPref: false,
        complete: true),
    const SizedBox(height: 16),
    LectureCard(
        title: "Dart 함수 - 2",
        description: "Arrow 함수 등 심화",
        day: 4,
        userPref: false,
        complete: false),
    const SizedBox(height: 16),
    LectureCard(
        title: "Dart 함수 - 3",
        description: "Override 등 심화",
        day: 4,
        userPref: false,
        complete: false),
  ],
  [
    LectureCard(
        title: "Dart 클래스 - 1",
        description: "Dart에서 클래스 사용",
        day: 5,
        userPref: false,
        complete: false),
    const SizedBox(height: 16),
    LectureCard(
        title: "Dart 클래스 - 2",
        description: "클래스 속 요소 (private, public)",
        day: 5,
        userPref: true,
        complete: false),
    const SizedBox(height: 16),
    LectureCard(
        title: "Dart 클래스 - 3",
        description: "추상 클래스 등 심화",
        day: 5,
        userPref: false,
        complete: false),
  ],
  [
    LectureCard(
        title: "Flutter란?",
        description: "Flutter 프레임워크란?",
        day: 6,
        userPref: true,
        complete: false),
    const SizedBox(height: 16),
    LectureCard(
        title: "Flutter 기초 셋팅",
        description: "개발 환경 셋팅 for Windows",
        day: 6,
        userPref: true,
        complete: false),
    const SizedBox(height: 16),
    LectureCard(
        title: "Flutter 주요 위젯들",
        description: "Scaffold, Container 등",
        day: 6,
        userPref: false,
        complete: false),
  ],
  [
    LectureCard(
        title: "Widget의 이벤트 처리",
        description: "onPressed 등 이벤트 처리",
        day: 7,
        userPref: false,
        complete: false),
    const SizedBox(height: 16),
    LectureCard(
        title: "Widget에 대한 세부적 이해",
        description: "Stateless vs Stateful",
        day: 7,
        userPref: false,
        complete: false),
  ],
  [
    LectureCard(
        title: "setState 사용",
        description: "Stateful 위젯에서의 값 변경",
        day: 8,
        userPref: false,
        complete: false),
    const SizedBox(height: 16),
    LectureCard(
        title: "사용자의 값 입력 받기",
        description: "TextField, Silder",
        day: 8,
        userPref: false,
        complete: false),
  ],
  [
    LectureCard(
        title: "레이아웃을 다루는 방법",
        description: "Flex, Expanded",
        day: 9,
        userPref: false,
        complete: false),
    const SizedBox(height: 16),
    LectureCard(
        title: "Constraint의 개념",
        description: "레이아웃 속 제약",
        day: 9,
        userPref: false,
        complete: false),
  ],
  [
    LectureCard(
        title: "레이아웃을 다루는 방법",
        description: "Flex, Expanded",
        day: 9,
        userPref: false,
        complete: false),
    const SizedBox(height: 16),
    LectureCard(
        title: "Constraint의 개념",
        description: "레이아웃 속 제약",
        day: 9,
        userPref: false,
        complete: false),
  ],
  [
    LectureCard(
        title: "레이아웃을 다루는 방법",
        description: "Flex, Expanded",
        day: 9,
        userPref: false,
        complete: false),
    const SizedBox(height: 16),
    LectureCard(
        title: "Constraint의 개념",
        description: "레이아웃 속 제약",
        day: 9,
        userPref: false,
        complete: false),
  ],
  [
    LectureCard(
        title: "레이아웃을 다루는 방법",
        description: "Flex, Expanded",
        day: 9,
        userPref: false,
        complete: false),
    const SizedBox(height: 16),
    LectureCard(
        title: "Constraint의 개념",
        description: "레이아웃 속 제약",
        day: 9,
        userPref: false,
        complete: false),
  ],
  [
    LectureCard(
        title: "레이아웃을 다루는 방법",
        description: "Flex, Expanded",
        day: 9,
        userPref: false,
        complete: false),
    const SizedBox(height: 16),
    LectureCard(
        title: "Constraint의 개념",
        description: "레이아웃 속 제약",
        day: 9,
        userPref: false,
        complete: false),
  ],
  [
    LectureCard(
        title: "레이아웃을 다루는 방법",
        description: "Flex, Expanded",
        day: 9,
        userPref: false,
        complete: false),
    const SizedBox(height: 16),
    LectureCard(
        title: "Constraint의 개념",
        description: "레이아웃 속 제약",
        day: 9,
        userPref: false,
        complete: false),
  ],
];
