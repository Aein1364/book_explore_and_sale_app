// ignore_for_file: file_names

import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class CategoryItemModel {
  late String title;
  late String author;
  late Image image;
  CategoryItemModel({
    required this.title,
    required this.author,
    required this.image,
  });
}

List<CategoryItemModel> categoriesList = [
  CategoryItemModel(
      title: '''The Story of Marie Curie''',
      author: 'Susan R Katy',
      image: Assets.img.images.marieCurie.image()),
  CategoryItemModel(
      title: '''At Home with Mohammed Ali''',
      author: 'Hana Alli',
      image: Assets.img.images.muhammadAli.image()),
  CategoryItemModel(
      title: 'Malcolm X',
      author: 'Alex Haley',
      image: Assets.img.images.malcolmX.image()),
  CategoryItemModel(
      title: '''Becoming Michelle Obama''',
      author: 'Michelle Obama',
      image: Assets.img.images.michelleObama.image()),
  CategoryItemModel(
      title: '''The Story of Walt Disney''',
      author: 'Susan B Katz',
      image: Assets.img.images.waltDisney.image()),
  CategoryItemModel(
      title: '''The Happiest Man on Earth''',
      author: 'Author Name',
      image: Assets.img.images.manOnTheEarth.image()),
];

List<String> categoriesListItems = [
  'Arts',
  'Biography',
  'Romance',
  'Thriller',
  'Fiction',
  'Crime',
  'Movies',
  'Religious',
  'Philosophy',
];
