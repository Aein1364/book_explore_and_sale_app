// ignore_for_file: file_names

import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class PageViewModel {
  late String content;
  late Image image;
  PageViewModel({required this.content, required this.image});
}

List<PageViewModel> pageViewList = [
  PageViewModel(content: '''Find out the best books to read
when you don’t even know what 
 to read!!!''', image: Assets.img.images.explorePoster.image()),
  PageViewModel(content: '''Find out the best books to read
when you don’t even know what 
to read!!!''', image: Assets.img.images.explorePoster.image()),
  PageViewModel(content: '''Find out the best books to read
when you don’t even know what 
to read!!!''', image: Assets.img.images.explorePoster.image()),
];
