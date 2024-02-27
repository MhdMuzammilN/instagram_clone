import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constants.dart';
import 'package:instagram_clone/core/constants/image_constants.dart';
import 'package:instagram_clone/global_widgets/custom_button.dart';

class SelectSavedUsers extends StatelessWidget {
  const SelectSavedUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConstants.instagramTypography),
            const SizedBox(
              height: 52,
            ),
            const Column(
              children: [
                CircleAvatar(
                  radius: 42.5,
                  backgroundImage:
                      AssetImage(ImageConstants.jacobWProfilePicture),
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  "jacob_w",
                  style: TextStyle(
                      color: ColorConstants.primaryBlack,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            CustomButton(
              buttonText: "Log in",
              onTap: () {},
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Switch accounts",
                style:
                    TextStyle(color: ColorConstants.primaryBlue, fontSize: 14),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 25),
        decoration:
            const BoxDecoration(border: Border(top: BorderSide(width: 0.1))),
        child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Don't have an account ",
                style: TextStyle(
                    color: ColorConstants.primaryBlack.withOpacity(.4)),
                children: const [
                  TextSpan(
                      text: " Sign up",
                      style: TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontWeight: FontWeight.w500,
                          fontSize: 12))
                ])),
      ),
    );
  }
}
