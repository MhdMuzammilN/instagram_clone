import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constants.dart';

class SearchBarInstagram extends StatelessWidget {
  const SearchBarInstagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        children: [
          Expanded(
              child: SizedBox(
            height: 36,
            child: TextField(
              enabled: true,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),

              //textfield - decorations - bgcolor and border

              decoration: InputDecoration(
                hintText: "Search",
                contentPadding: const EdgeInsets.all(10),

                prefixIcon: const Icon(
                  Icons.search,
                  size: 28,
                ),
                // prefixIconConstraints: const BoxConstraints(minWidth: 30),
                isDense: true,
                filled: true,
                fillColor: ColorConstants.primaryGrey.withOpacity(0.12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ColorConstants.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ColorConstants.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          )),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.qr_code_scanner)
        ],
      ),
    );
  }
}
