import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constants.dart';
import 'package:instagram_clone/core/constants/image_constants.dart';
import 'package:instagram_clone/dummy_Db.dart';
import 'package:instagram_clone/view/home_screen/widget/custom_story_avatar.dart';
import 'package:instagram_clone/view/home_screen/widget/home_feeds_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.photo_camera_outlined)),
        title: Image.asset(
          ImageConstants.instagramTypography,
          scale: 1.5,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
            color: ColorConstants.primaryBlack,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.send_outlined,
            ),
            color: ColorConstants.primaryBlack,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#1. Story section.

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    DummyDb.storyList.length,
                    (index) => CustomStoryAvatar(
                        isAlive: DummyDb.storyList[index]["isLive"],
                        userName: DummyDb.storyList[index]["userName"],
                        profilePicture: DummyDb.storyList[index]
                            ["profilePicture"])),
              ),
            ),

            // #2. Post's feed section.

            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const HomeFeedsCard(),
            )
          ],
        ),
      ),
    );
  }
}
