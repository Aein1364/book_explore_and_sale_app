// ignore_for_file: file_names

import 'package:book_explore_and_sale_app/components/MyColors.dart';
import 'package:book_explore_and_sale_app/components/myComponent.dart';

import 'package:book_explore_and_sale_app/view/MainScreen.dart';
import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class ReviewBookScreen extends StatefulWidget {
  const ReviewBookScreen({super.key});

  @override
  State<ReviewBookScreen> createState() => _ReviewBookScreenState();
}

class _ReviewBookScreenState extends State<ReviewBookScreen> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(21, 10, 21, 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const MainScreen(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 27,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                              color: SolidColors.primaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            '+ Add to wishlist',
                            style: textTheme.titleSmall!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 212,
                      child: Assets.img.images.reviewPoster
                          .image(fit: BoxFit.cover)),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Assets.img.icons.profle.image(),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dust Jacket',
                            style: textTheme.titleLarge,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'By Pisco Pirinto',
                            style: textTheme.labelMedium!.copyWith(
                                fontWeight: FontWeight.w700, fontSize: 13),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  color: Colors.amber[600], size: 15),
                              Icon(Icons.star,
                                  color: Colors.amber[600], size: 15),
                              Icon(Icons.star,
                                  color: Colors.amber[600], size: 15),
                              Icon(Icons.star,
                                  color: Colors.amber[600], size: 15),
                              Icon(Icons.star,
                                  color: Colors.amber[600], size: 15),
                              Text(
                                '| 1,500 Reads',
                                style: textTheme.titleSmall!.copyWith(
                                    color: Colors.black.withOpacity(.25)),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 0;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'About',
                              style: textTheme.labelMedium,
                            ),
                            SizedBox(
                              width: 70,
                              child: Divider(
                                color: selected == 0
                                    ? Colors.orange
                                    : SolidColors.secondaryColor,
                                thickness: 3,
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 1;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Reviews',
                              style: textTheme.labelMedium,
                            ),
                            SizedBox(
                              width: 70,
                              child: Divider(
                                color: selected == 1
                                    ? Colors.orange
                                    : SolidColors.secondaryColor,
                                thickness: 3,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 2;
                            });
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text(
                                  'Author',
                                  style: textTheme.labelMedium,
                                ),
                              ),
                              SizedBox(
                                child: Divider(
                                  color: selected == 2
                                      ? Colors.orange
                                      : SolidColors.secondaryColor,
                                  thickness: 3,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '''Lorem ipsum dolor sit amet consectetur. Faucibus tellus bibendum egestas dui facilisis vitae porttitor. Tristique est ipsum proin vestibulum lacus orci. Non ipsum sapien velit vitae magna quam. Cursus tempor nulla imperdiet tortor habitant arcu. Eu venenatis diam facilisis eu leo pellentesque quam ullamcorper malesuada. Facilisis diam mattis justo vel feugiat sagittis tortor urna. Arcu aliquam pellentesque lorem elit neque gravida. Bibendum bibendum feugiat facilisi viverra vitae tortor scelerisque facilisis orci.Lorem ipsum dolor sit amet consectetur. Faucibus tellus bibendum egestas dui facilisis vitae porttitor. Tristique est ipsum proin vestibulum lacus orci. Non ipsum sapien velit vitae magna quam. Cursus tempor nulla imperdiet tortor habitant arcu. Eu venenatis diam facilisis eu leo pellentesque quam ullamcorper malesuada. Facilisis diam mattis justo vel feugiat sagittis tortor urna. Arcu aliquam pellentesque lorem elit neque gravida. Bibendum bibendum feugiat facilisi viverra vitae tortor scelerisque facilisis orci.''',
                    style: textTheme.labelMedium!.copyWith(
                        color: SolidColors.secondaryColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.5),
                  ),
                  const SizedBox(
                    height: 150,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                const Color(0xffFFFFFF).withOpacity(.58),
                const Color(0xffFFFFFF)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
          MyBottomNavigationBar(
              textTheme: textTheme,
              ontap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              }),
          Positioned(
            bottom: 115,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 149,
                height: 35,
                decoration: BoxDecoration(
                    color: const Color(0xffE49527),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add to Cart',
                      style: textTheme.labelMedium!.apply(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Assets.img.icons.cart
                        .image(width: 15, height: 15, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
