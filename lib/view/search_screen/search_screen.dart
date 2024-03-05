import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constants.dart';
import 'package:instagram_clone/view/search_screen/widget/search_bar.dart';
import 'package:instagram_clone/view/search_screen/widget/search_category_chips.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //1. Instagram Search Bar
          const SearchBarInstagram(),
          //2. Search categorys, just below search bar
          const SearchCategoryChips(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => SizedBox(
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                      child: Row(
                        children: [
                          Offstage(
                            offstage: index % 2 == 0 ? false : true,
                            child: Column(
                              children: List.generate(
                                  2,
                                  (index) => Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 1, bottom: 1),
                                          child: Container(
                                            color: index.isEven
                                                ? Colors.amber
                                                : Colors.red,
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.33,
                                            child: Text(index.toString()),
                                          ),
                                        ),
                                      )),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: ColorConstants.primaryGrey,
                            ),
                          ),
                          Offstage(
                            offstage: index % 2 == 0 ? true : false,
                            child: Column(
                              children: List.generate(
                                  2,
                                  (index) => Expanded(
                                        child: Container(
                                          color: Colors.amber,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.33,
                                          child: Text(index.toString()),
                                        ),
                                      )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 1,
                                mainAxisExtent: 125,
                                mainAxisSpacing: 1),
                        itemBuilder: (context, index) => Container(
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
