// ignore_for_file: file_names

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../components/MyColors.dart';
import '../gen/assets.gen.dart';
import '../model/LibraryModel.dart';
import '../model/WishListModel.dart';

class MyLibraryScreen extends StatelessWidget {
  MyLibraryScreen({super.key, required this.globalKey});
  final GlobalKey<ScaffoldState> globalKey;

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
                  GestureDetector(
                      onTap: () {
                        globalKey.currentState!.openDrawer();
                      },
                      child:
                          Assets.img.icons.menu.image(width: 24, height: 24)),
                  const SizedBox(
                    width: 17,
                  ),
                  SizedBox(
                    height: 36,
                    width: 212,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(18)),
                          filled: true,
                          fillColor: const Color(0xffF6F5FA),
                          suffixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 25,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 42,
                    height: 42,
                    child: IconButton(
                      highlightColor: Colors.black.withOpacity(.01),
                      splashRadius: 20,
                      onPressed: () {},
                      icon:
                          Assets.img.icons.vector.image(width: 28, height: 28),
                    ),
                  ),
                  SizedBox(
                    width: 45,
                    height: 45,
                    child: IconButton(
                      highlightColor: Colors.black.withOpacity(.01),
                      splashRadius: 20,
                      onPressed: () {},
                      icon: Assets.img.icons.bell.image(width: 27, height: 29),
                    ),
                  )
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
                      InkWell(
                        onTap: () {},
                        splashColor: Colors.black.withOpacity(.01),
                        child: DottedBorder(
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(5),
                            dashPattern: const [2, 2],
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          Colors.white),
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.black.withOpacity(.03)),
                                  fixedSize: const MaterialStatePropertyAll(
                                      Size(117, 153))),
                              onPressed: () {},
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
                            )),
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

class WishListItem extends StatefulWidget {
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
  State<WishListItem> createState() => _WishListItemState();
}

class _WishListItemState extends State<WishListItem> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 85,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(image: widget.image, fit: BoxFit.cover),
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
                widget.title,
                style: widget.textTheme.titleSmall,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.author,
                style: widget.textTheme.titleSmall!
                    .apply(color: SolidColors.secondaryColor),
              ),
              Expanded(
                  child: RatingStars(
                value: value,
                starCount: 5,
                starSize: 12,
                starColor: Colors.yellow,
                valueLabelVisibility: false,
                starBuilder: (index, color) {
                  return Icon(
                    Icons.star,
                    color: color,
                    size: 12,
                  );
                },
                onValueChanged: (v) {
                  setState(() {
                    value = v;
                  });
                },
              ))
            ],
          ),
        )
      ],
    );
  }
}
