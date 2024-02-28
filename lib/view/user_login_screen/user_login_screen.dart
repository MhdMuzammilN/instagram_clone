import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constants.dart';
import 'package:instagram_clone/core/constants/image_constants.dart';
import 'package:instagram_clone/global_widgets/custom_button.dart';

class UserLoginScreen extends StatefulWidget {
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(ImageConstants.instagramTypography),
            const SizedBox(
              height: 39,
            ),
            TextFormField(
              controller: usernameController,
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorConstants.primaryBlack.withOpacity(0.2))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorConstants.primaryBlack.withOpacity(0.4)),
                  ),
                  fillColor: ColorConstants.primaryWhite.withOpacity(0.1),
                  hintStyle: TextStyle(
                      color: ColorConstants.primaryBlack.withOpacity(.2)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 13.5, horizontal: 15),
                  hintText: "Phone number, email or username"),
              onChanged: (value) {
                setState(() {});
              },
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorConstants.primaryBlack.withOpacity(0.2))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorConstants.primaryBlack.withOpacity(0.4)),
                  ),
                  fillColor: ColorConstants.primaryWhite.withOpacity(0.1),
                  hintStyle: TextStyle(
                      color: ColorConstants.primaryBlack.withOpacity(.2)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 13.5, horizontal: 15),
                  hintText: "Password"),
              onChanged: (value) {
                setState(() {});
              },
            ),
            const SizedBox(
              height: 19,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: ColorConstants.primaryBlue,
                    ),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
                buttonBgColor: usernameController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty
                    ? ColorConstants.primaryBlue
                    : ColorConstants.primaryBlue.withOpacity(0.4),
                buttonText: "Log in",
                onTap: () {}),
            const SizedBox(
              height: 37,
            ),
            TextButton.icon(
                style: const ButtonStyle(
                    foregroundColor:
                        MaterialStatePropertyAll(ColorConstants.primaryBlue)),
                onPressed: () {},
                icon: const Icon(Icons.facebook_outlined),
                label: const Text("Log in with Facebook")),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Divider(
                    color: ColorConstants.primaryBlack.withOpacity(0.2),
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 41),
                  child: Text(
                    "OR",
                    style: TextStyle(
                        color: ColorConstants.primaryBlack.withOpacity(0.4),
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: ColorConstants.primaryBlack.withOpacity(0.2),
                  ),
                ),
              ],
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "Don't have an account?",
                  style: TextStyle(
                      color: ColorConstants.primaryBlack.withOpacity(0.4)),
                  children: const [
                    TextSpan(
                        text: " Sign up.",
                        style: TextStyle(color: ColorConstants.primaryBlue))
                  ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 25),
          decoration:
              const BoxDecoration(border: Border(top: BorderSide(width: 0.1))),
          child: Text(
            "Instagram or Facebook",
            textAlign: TextAlign.center,
            style:
                TextStyle(color: ColorConstants.primaryBlack.withOpacity(0.4)),
          )),
    );
  }
}
