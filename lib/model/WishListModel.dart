// ignore_for_file: file_names

import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class WishList {
  late String title;
  late String author;
  late Image image;
  WishList({
    required this.title,
    required this.author,
    required this.image,
  });
}

List<WishList> wishListBooks = [
  WishList(
      title: 'Good Company',
      author: 'Cynthia D.S',
      image: Assets.img.images.goodCompany.image()),
  WishList(
      title: 'Book Lovers',
      author: 'Emily Henry',
      image: Assets.img.images.bookLovers.image()),
  WishList(
      title: 'Leaving Time',
      author: 'Jodi Picoult',
      image: Assets.img.images.jodiPicoult.image()),
  WishList(
      title: 'Silent Scream ',
      author: 'Angela Marsons',
      image: Assets.img.images.silentScream.image()),
  WishList(
      title: 'The Kite Runner',
      author: 'Khaled Hosseini',
      image: Assets.img.images.theKidRunner.image()),
  WishList(
      title: 'Father of the Rain',
      author: 'Lily King',
      image: Assets.img.images.fatherOfTheRain.image()),
];
