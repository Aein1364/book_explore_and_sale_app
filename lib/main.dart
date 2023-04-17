// ignore_for_file: unused_import

import 'package:book_explore_and_sale_app/components/MyColors.dart';
import 'package:book_explore_and_sale_app/view/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(
    const MyApp(),
  );
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xff165C73),
          highlightColor: const Color(0xff979797),
          textTheme: TextTheme(
            titleLarge: TextStyle(
              fontFamily: GoogleFonts.urbanist().fontFamily,
              color: SolidColors.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
            titleMedium: TextStyle(
              fontFamily: GoogleFonts.urbanist().fontFamily,
              color: SolidColors.primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            titleSmall: TextStyle(
              fontFamily: GoogleFonts.urbanist().fontFamily,
              color: SolidColors.primaryColor,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
            labelMedium: TextStyle(
              fontFamily: GoogleFonts.urbanist().fontFamily,
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w800,
            ),
            labelSmall: TextStyle(
              fontFamily: GoogleFonts.urbanist().fontFamily,
              color: Colors.black,
              fontSize: 8,
              fontWeight: FontWeight.w800,
            ),
          )),
      home: const MainScreen(),
    );
  }
}
