import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constants.dart';
import 'package:instagram_clone/core/constants/image_constants.dart';

class CustomStoryAvatar extends StatelessWidget {
  const CustomStoryAvatar(
      {super.key,
      required this.isAlive,
      required this.userName,
      required this.profilePicture});

  final bool isAlive;
  final String userName;
  final String profilePicture;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        //#1 Story-avatar
        Stack(
          alignment: Alignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 62,
              width: 62,
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: ColorConstants.storyGradient,
                      begin: Alignment.bottomLeft)),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: ColorConstants.primaryWhite),
                child: const CircleAvatar(
                    radius: 28,
                    backgroundImage:
                        AssetImage(ImageConstants.jacobWProfilePicture)),
              ),
            ),
            Positioned(
                bottom: 05,
                child: isAlive == true
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 5),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: ColorConstants.liveButtonGradient),
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(
                                width: 3, color: ColorConstants.primaryWhite)),
                        child: const Text(
                          "Live",
                          style: TextStyle(
                              color: ColorConstants.primaryWhite,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    : const SizedBox())
          ],
        ),
        Text(
          userName,
          style:
              const TextStyle(color: ColorConstants.primaryBlack, fontSize: 12),
        ),
      ]),
    );
  }
}
