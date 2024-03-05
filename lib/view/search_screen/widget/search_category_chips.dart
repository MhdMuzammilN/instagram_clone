import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constants.dart';

class SearchCategoryChips extends StatelessWidget {
  const SearchCategoryChips({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            10,
            (index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: ColorConstants.primaryGrey.withOpacity(0.18)),
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
    );
  }
}
