// ignore_for_file: file_names

import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  late String title;
  late String author;
  late Image image;
  CategoryModel({
    required this.title,
    required this.author,
    required this.image,
  });
}

List<CategoryModel> categoriesList = [
  CategoryModel(
      title: '''The Story of Marie Curie''',
      author: 'Susan R Katy',
      image: Assets.img.images.marieCurie.image()),
  CategoryModel(
      title: '''At Home with Mohammed Ali''',
      author: 'Hana Alli',
      image: Assets.img.images.muhammadAli.image()),
  CategoryModel(
      title: 'Malcolm X',
      author: 'Alex Haley',
      image: Assets.img.images.malcolmX.image()),
  CategoryModel(
      title: '''Becoming Michelle Obama''',
      author: 'Michelle Obama',
      image: Assets.img.images.michelleObama.image()),
  CategoryModel(
      title: '''The Story of Walt Disney''',
      author: 'Susan B Katz',
      image: Assets.img.images.waltDisney.image()),
  CategoryModel(
      title: '''The Happiest Man on Earth''',
      author: 'Author Name',
      image: Assets.img.images.manOnTheEarth.image()),
];
