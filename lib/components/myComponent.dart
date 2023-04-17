// ignore_for_file: file_names

import 'dart:developer';
import 'package:flutter/material.dart';
import '../gen/assets.gen.dart';
import '../model/PageViewModel.dart';
import 'MyColors.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    super.key,
    required this.textTheme,
    required this.ontap,
  });

  final TextTheme textTheme;
  final Function(int index) ontap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: const Color(0xffF6F5FA),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.3),
              offset: const Offset(0, -1),
              blurRadius: 20,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                ontap(0);
              },
              child: AnimatedScale(
                duration: const Duration(milliseconds: 600),
                scale: selectedIndex == 0 ? 1.2 : 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.img.icons.myLibrary.image(
                        width: 24,
                        height: 24,
                        color: selectedIndex == 0
                            ? const Color.fromARGB(255, 255, 60, 0)
                            : null),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'My Library',
                      style: textTheme.titleSmall!.apply(
                        color: selectedIndex == 0
                            ? SolidColors.primaryColor
                            : SolidColors.secondaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                log(pageViewList.length.toString());
                ontap(1);
              },
              child: AnimatedScale(
                duration: const Duration(milliseconds: 600),
                scale: selectedIndex == 1 ? 1.2 : 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.img.icons.explore.image(
                        width: 24,
                        height: 24,
                        color: selectedIndex == 1
                            ? const Color.fromARGB(255, 255, 60, 0)
                            : null),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Explore',
                      style: textTheme.titleSmall!.apply(
                        color: selectedIndex == 1
                            ? SolidColors.primaryColor
                            : SolidColors.secondaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.img.icons.cart.image(width: 24, height: 24),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Cart',
                  style: textTheme.titleSmall!.apply(
                    color: SolidColors.secondaryColor,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.img.icons.community.image(width: 24, height: 24),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Community',
                  style: textTheme.titleSmall!.apply(
                    color: SolidColors.secondaryColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

int selectedIndex = 0;
