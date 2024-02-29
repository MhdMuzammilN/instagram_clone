import 'package:flutter/material.dart';
import 'package:instagram_clone/dummy_Db.dart';
import 'package:instagram_clone/view/home_screen/widget/custom_story_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
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
          )
        ],
      ),
    );
  }
}
