import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constants.dart';

class HomeFeedsCard extends StatelessWidget {
  const HomeFeedsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //#1. usersdetail tile - profilepic, username.....

        Padding(
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
      ],
    );
  }
}
