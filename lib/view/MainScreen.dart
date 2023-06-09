// ignore_for_file: file_names

import 'package:book_explore_and_sale_app/view/ExploreScreen.dart';
import 'package:book_explore_and_sale_app/view/MyLibraryScreen.dart';

import 'package:flutter/material.dart';

import '../components/myComponent.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final globalKey = GlobalKey<ScaffoldState>();
  final GlobalKey<NavigatorState> _myLibraryKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _exploreScreenKey =
      GlobalKey<NavigatorState>();
  Future<bool> onWillPop() async {
    if (_exploreScreenKey.currentState!.canPop()) {
      _exploreScreenKey.currentState!.pop();
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
        child: GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: WillPopScope(
        onWillPop: onWillPop,
        child: Scaffold(
          key: globalKey,
          drawer: Container(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Item 1',
                    style: textTheme.titleLarge,
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Text(
                    'Item 2',
                    style: textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ),
          body: Stack(
            children: [
              Positioned.fill(
                  child: IndexedStack(
                index: selectedIndex,
                children: [
                  Navigator(
                    onGenerateRoute: (settings) => MaterialPageRoute(
                      builder: (context) => MyLibraryScreen(
                        globalKey: globalKey,
                      ),
                    ),
                  ),
                  Navigator(
                    key: _exploreScreenKey,
                    onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => ExploreScreen(
                              globalKey: globalKey,
                            )),
                  )
                ],
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
        ),
      ),
    ));
  }
}
