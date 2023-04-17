// ignore_for_file: file_names

import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class CategoryItem {
  late String content;
  late Image image;
  CategoryItem({required this.content, required this.image});
}

List<CategoryItem> pageViewList = [
  CategoryItem(content: '''Find out the best books to read
when you don’t even know what 
 to read!!!''', image: Assets.img.images.explorePoster.image()),
  CategoryItem(content: '''Find out the best books to read
when you don’t even know what 
to read!!!''', image: Assets.img.images.explorePoster.image()),
  CategoryItem(content: '''Find out the best books to read
when you don’t even know what 
to read!!!''', image: Assets.img.images.explorePoster.image()),
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
