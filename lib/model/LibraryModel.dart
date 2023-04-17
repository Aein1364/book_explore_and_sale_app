// ignore_for_file: file_names

import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class LibraryModel {
  late String title;
  late Image image;
  LibraryModel({required this.title, required this.image});
}

List<LibraryModel> libraryBookList = [
  LibraryModel(
      title: 'After Life', image: Assets.img.images.juliaAlvarez.image()),
  LibraryModel(
      title: 'Ghost Boys', image: Assets.img.images.ghostBoysBook.image())
];
