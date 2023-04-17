// ignore_for_file: file_names

import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Library {
  late String title;
  late Image image;
  Library({required this.title, required this.image});
}

List<Library> libraryBookList = [
  Library(title: 'After Life', image: Assets.img.images.juliaAlvarez.image()),
  Library(title: 'Ghost Boys', image: Assets.img.images.ghostBoysBook.image())
];
