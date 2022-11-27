// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({required this.index, required this.onTap, super.key});
  final int index;
  final Function(int?) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey.shade800,
      // backgroundColor: Colors.blueAccent,
      backgroundColor: Colors.transparent, //
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_work_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notification_important_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Home'),
      ],
    );
  }
}
