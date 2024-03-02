import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constants.dart';

class HomeFeedsCard extends StatefulWidget {
  const HomeFeedsCard({super.key});

  @override
  State<HomeFeedsCard> createState() => _HomeFeedsCardState();
}

class _HomeFeedsCardState extends State<HomeFeedsCard> {
  int postIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //#1. usersdetail tile - profilepic, username.....

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 11),
          child: Row(
            children: [
              CircleAvatar(
                radius: 16,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "joshua_i",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 13),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.verified,
                        color: ColorConstants.primaryBlue,
                        size: 16,
                      )
                    ],
                  ),
                  Text(
                    "Tokyo, Japan",
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
              Spacer(),
              Icon(Icons.more_horiz)
            ],
          ),
        ),

        //#2 Post's section - images/videos...

        Stack(
          children: [
            SizedBox(
              height: 375,
              child: PageView.builder(
                itemCount: 5,
                onPageChanged: (value) {
                  postIndex = value + 1;
                  setState(() {});
                },
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(
                        "https://images.pexels.com/photos/11728874/pexels-photo-11728874.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      ),
                      fit: BoxFit.cover,
                    )),
                  );
                },
              ),
            ),
            Positioned(
              top: 14,
              right: 14,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                    color: ColorConstants.primaryBlack.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(13)),
                child: Text(
                  "$postIndex/5",
                  style: const TextStyle(color: ColorConstants.primaryWhite),
                ),
              ),
            )
          ],
        ),

        //#3 Like, Comment, Share, Caarousal, saved

        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              const Expanded(
                child: Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(
                      width: 17.5,
                    ),
                    Icon(Icons.maps_ugc_outlined),
                    SizedBox(
                      width: 17.5,
                    ),
                    Icon(Icons.send_outlined),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: List.generate(
                      3,
                      (index) => const CircleAvatar(
                            radius: 6,
                            backgroundColor: ColorConstants.primaryBlue,
                          )),
                ),
              ),
              const Icon(Icons.bookmark_outline)
            ],
          ),
        ),

        //#4 Liked by, and Liked Count
        const Row(
          children: [
            CircleAvatar(
              radius: 8.5,
            ),
          ],
        )
      ],
    );
  }
}