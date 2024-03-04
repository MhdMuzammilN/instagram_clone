import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 36,
                  child: TextField(
                    enabled: true,
                    onTapOutside: (event) => FocusScope.of(context).unfocus(),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorConstants.primaryGrey.withOpacity(0.12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: ColorConstants.primaryGrey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                )),
                const SizedBox(
                  width: 10,
                ),
                const Icon(Icons.qr_code_scanner)
              ],
            ),
          )
        ],
      ),
    );
  }
}
