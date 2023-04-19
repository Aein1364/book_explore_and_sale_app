// ignore_for_file: file_names
import 'package:book_explore_and_sale_app/components/MyColors.dart';
import 'package:book_explore_and_sale_app/model/PageViewModel.dart';
import 'package:book_explore_and_sale_app/model/categoryModel.dart';
import 'package:book_explore_and_sale_app/view/ReviewBookScreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../gen/assets.gen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final PageController _controller = PageController();

  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 19),
              //appbar
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Assets.img.icons.menu.image(width: 24, height: 24),
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
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 25,
                            )),
                      )),
                  const SizedBox(
                    width: 27,
                  ),
                  Assets.img.icons.vector.image(width: 28, height: 28),
                  const SizedBox(
                    width: 9,
                  ),
                  Assets.img.icons.bell.image(width: 27, height: 29),
                ],
              ),
            ),
            //pageview items
            SizedBox(
              height: 170,
              child: PageView.builder(
                  controller: _controller,
                  itemCount: pageViewList.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (contex, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 24 : 12,
                        right: index == pageViewList.length - 1 ? 24 : 12,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: size.width,
                            height: 165,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: pageViewList[index].image.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 14,
                            left: 8,
                            child: Text(
                              pageViewList[index].content,
                              style: textTheme.titleMedium!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Positioned(
                              bottom: 50,
                              left: 8,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    minimumSize: const MaterialStatePropertyAll(
                                      Size(62, 26),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Explore',
                                    style: textTheme.titleSmall!
                                        .apply(color: Colors.deepOrange),
                                  )))
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 10),
            //pageview indicator
            Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: pageViewList.length,
                effect: const ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  expansionFactor: 7,
                  dotColor: SolidColors.secondaryColor,
                  activeDotColor: Colors.deepOrange,
                ),
              ),
            ),
            //categories title
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 20, 0, 10),
              child: Text(
                'Categories',
                style: textTheme.titleLarge,
              ),
            ),
            //categories item title list
            SizedBox(
              height: 40,
              child: ListView.builder(
                  itemCount: categoriesListItems.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: index == 0 ? 24 : 10,
                          right:
                              index == categoriesListItems.length - 1 ? 24 : 10,
                        ),
                        child: Column(
                          children: [
                            AnimatedScale(
                              duration: const Duration(milliseconds: 400),
                              scale: selectedIndex == index ? 1.2 : 1,
                              child: Container(
                                padding: const EdgeInsets.only(bottom: 3),
                                decoration: BoxDecoration(
                                    border: Border(
                                  bottom: BorderSide(
                                    color: index == selectedIndex
                                        ? Colors.deepOrange
                                        : Colors.transparent,
                                    width: 2,
                                  ),
                                )),
                                child: Text(
                                  categoriesListItems[index],
                                  style: textTheme.titleSmall!.copyWith(
                                      color: index == selectedIndex
                                          ? SolidColors.primaryColor
                                          : SolidColors.secondaryColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            //categories list choosed fron category title list
            GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: categoriesList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: .48,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ReviewBookScreen())),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 163,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: categoriesList[index].image.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(categoriesList[index].title,
                            style: textTheme.titleMedium!.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w800)),
                        Text(
                          categoriesList[index].author,
                          style: textTheme.titleSmall!
                              .copyWith(color: SolidColors.secondaryColor),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.star,
                                  color: Colors.amber[600], size: 12),
                              Icon(Icons.star,
                                  color: Colors.amber[600], size: 12),
                              Icon(Icons.star,
                                  color: Colors.amber[600], size: 12),
                              Icon(Icons.star,
                                  color: Colors.amber[600], size: 12),
                              const Icon(Icons.star,
                                  color: SolidColors.secondaryColor, size: 12),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
            const SizedBox(
              height: 100,
            )
          ],
        ));
  }
}
