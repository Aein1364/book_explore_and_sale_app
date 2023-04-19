// ignore_for_file: file_names

import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class WishListModel {
  late String title;
  late String author;
  late Image image;
  WishListModel({
    required this.title,
    required this.author,
    required this.image,
  });
}

List<WishListModel> wishListBooks = [
  WishListModel(
      title: 'Good Company',
      author: 'Cynthia D.S',
      image: Assets.img.images.goodCompany.image()),
  WishListModel(
      title: 'Book Lovers',
      author: 'Emily Henry',
      image: Assets.img.images.bookLovers.image()),
  WishListModel(
      title: 'Leaving Time',
      author: 'Jodi Picoult',
      image: Assets.img.images.jodiPicoult.image()),
  WishListModel(
      title: 'Silent Scream ',
      author: 'Angela Marsons',
      image: Assets.img.images.silentScream.image()),
  WishListModel(
      title: 'The Kite Runner',
      author: 'Khaled Hosseini',
      image: Assets.img.images.theKidRunner.image()),
  WishListModel(
      title: 'Father of the Rain',
      author: 'Lily King',
      image: Assets.img.images.fatherOfTheRain.image()),
  WishListModel(
      title: 'Leaving Time',
      author: 'Jodi Picoult',
      image: Assets.img.images.jodiPicoult.image()),
  WishListModel(
      title: 'Silent Scream ',
      author: 'Angela Marsons',
      image: Assets.img.images.silentScream.image()),
];
