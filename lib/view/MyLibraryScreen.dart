// ignore_for_file: file_names

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../components/MyColors.dart';
import '../gen/assets.gen.dart';
import '../model/LibraryModel.dart';
import '../model/WishListModel.dart';

class MyLibraryScreen extends StatelessWidget {
  const MyLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 19),
              //appbar
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Assets.img.icons.menu.image(width: 24, height: 24),
                  const SizedBox(
                    width: 17,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    height: 36,
                    width: 212,
                    decoration: BoxDecoration(
                        color: const Color(0xffF6F5FA),
                        borderRadius: BorderRadius.circular(18)),
                    child: Assets.img.icons.search.image(width: 24, height: 24),
                  ),
                  const SizedBox(
                    width: 27,
                  ),
                  Assets.img.icons.vector.image(width: 28, height: 28),
                  const SizedBox(
                    width: 9,
                  ),
                  Assets.img.icons.bell.image(width: 27, height: 29),
                ],
              ),
            ),
            //name of user
            Text(
              'Hi Emily,',
              style: textTheme.titleMedium,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 18,
                bottom: 18,
              ),
              //user my library title
              child: Text(
                'My Library',
                style: textTheme.titleLarge,
              ),
            ),
            //user my library list
            SizedBox(
              height: 204,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  LibraryItem(
                    textTheme: textTheme,
                    image: libraryBookList[0].image.image,
                    title: libraryBookList[0].title,
                    percent: 1,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  LibraryItem(
                    textTheme: textTheme,
                    image: libraryBookList[1].image.image,
                    title: libraryBookList[1].title,
                    percent: 0.6,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    children: [
                      DottedBorder(
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(5),
                        dashPattern: const [2, 2],
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            alignment: Alignment.center,
                            height: 153,
                            width: 117,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.add,
                                  color: SolidColors.secondaryColor,
                                  size: 24,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Discover More',
                                  style: textTheme.labelMedium!.apply(
                                    color: SolidColors.secondaryColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //user my wishlist title
            Padding(
              padding: const EdgeInsets.only(top: 38, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Wishlist',
                    style: textTheme.titleLarge!
                        .apply(color: const Color(0xffE49527)),
                  ),
                  Text(
                    'See More',
                    style: textTheme.titleSmall!
                        .apply(color: const Color(0xffE49527)),
                  ),
                ],
              ),
            ),
            //user my wishlist list
            GridView.builder(
                itemCount: wishListBooks.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const ClampingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.8, crossAxisCount: 2),
                itemBuilder: (contex, index) {
                  return WishListItem(
                    textTheme: textTheme,
                    title: wishListBooks[index].title,
                    author: wishListBooks[index].author,
                    image: wishListBooks[index].image.image,
                  );
                }),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class LibraryItem extends StatelessWidget {
  const LibraryItem({
    super.key,
    required this.textTheme,
    required this.title,
    required this.percent,
    required this.image,
  });

  final TextTheme textTheme;
  final String title;
  final double percent;
  final ImageProvider image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 156,
          width: 117,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(image: image, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: textTheme.labelMedium,
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 86,
              child: LinearPercentIndicator(
                padding: EdgeInsets.zero,
                lineHeight: 4,
                progressColor: SolidColors.primaryColor,
                backgroundColor: const Color(0xffDADADA),
                percent: percent,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '${(percent * 100).toInt()}%',
              style: textTheme.labelSmall,
            ),
          ],
        )
      ],
    );
  }
}

class WishListItem extends StatelessWidget {
  final TextTheme textTheme;
  final String title;
  final String author;
  final ImageProvider image;
  const WishListItem(
      {super.key,
      required this.textTheme,
      required this.title,
      required this.author,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 85,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(image: image, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textTheme.titleSmall,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                author,
                style: textTheme.titleSmall!
                    .apply(color: SolidColors.secondaryColor),
              ),
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber[600], size: 12),
                    Icon(Icons.star, color: Colors.amber[600], size: 12),
                    Icon(Icons.star, color: Colors.amber[600], size: 12),
                    Icon(Icons.star, color: Colors.amber[600], size: 12),
                    const Icon(Icons.star,
                        color: SolidColors.secondaryColor, size: 12),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
