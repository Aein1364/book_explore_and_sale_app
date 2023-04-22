// ignore_for_file: file_names
import 'package:book_explore_and_sale_app/components/widgets/ExploreWidget.dart';
import 'package:book_explore_and_sale_app/components/MyColors.dart';
import 'package:book_explore_and_sale_app/components/widgets/ReviewBookWidget.dart';
import 'package:book_explore_and_sale_app/model/PageViewModel.dart';
import 'package:book_explore_and_sale_app/model/categoryModel.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../components/myComponent.dart';
import '../gen/assets.gen.dart';
import 'package:get/get.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key, required this.globalKey});
  final GlobalKey<ScaffoldState> globalKey;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Obx(
      () => IndexedStack(
        index: screenIndex.value,
        children: [
          ExploreWidget(globalKey: GlobalKey<ScaffoldState>()),
          ReviewBookWidget()
        ],
      ),
    );
  }
}

RxInt screenIndex = 0.obs;
