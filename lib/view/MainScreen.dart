// ignore_for_file: file_names

import 'package:book_explore_and_sale_app/view/CategoriesScreen.dart';
import 'package:book_explore_and_sale_app/view/MyLibraryScreen.dart';

import 'package:flutter/material.dart';

import '../components/myComponent.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: IndexedStack(
            index: selectedIndex,
            children: const [MyLibraryScreen(), CategoriesScreen()],
          )),
          MyBottomNavigationBar(
            textTheme: textTheme,
            ontap: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
          )
        ],
      ),
    ));
  }
}
