import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constants.dart';
import 'package:instagram_clone/view/search_screen/widget/search_bar.dart';

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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  10,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3, vertical: 10),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorConstants.primaryGrey
                                    .withOpacity(0.18)),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.tv),
                              SizedBox(
                                width: 5.5,
                              ),
                              Text("IGTV")
                            ],
                          ),
                        ),
                      )),
            ),
          ),
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
                                        child: Container(
                                          color: Colors.amber,
                                          width: 124,
                                          child: Text(index.toString()),
                                        ),
                                      )),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              width: 250,
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
                                          width: 124,
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
