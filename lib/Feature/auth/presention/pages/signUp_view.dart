import 'package:bookia/Core/Utils/Colors.dart';
import 'package:bookia/Core/Utils/Text_Style.dart';
import 'package:bookia/Core/Widgets/backbottonwidget.dart';
import 'package:bookia/Core/Widgets/customButton.dart';
import 'package:bookia/Feature/auth/widgets/social_login_wodget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class signupView extends StatefulWidget {
  const signupView({super.key});

  @override
  State<signupView> createState() => _signupViewState();
}

class _signupViewState extends State<signupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              backbutton_widget(),
            ],
          )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don\'t have an account",
              style: getBodyTextStyle(),
            ),
            Gap(10),
            TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: () {},
                child: Text("Sign Up Now",
                    style: getSmallTextStyle(
                      color: AppColors.Dark,
                    )))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Welcome back! Glad to see you, Agin!",
                style: getHeadLineTextStyle(),
              ),
              const Gap(32),
              TextFormField(
                decoration: InputDecoration(hintText: " User name"),
              ),
              Gap(15),
              TextFormField(
                decoration: InputDecoration(hintText: " email"),
              ),
              Gap(15),
              TextFormField(
                decoration: InputDecoration(
                    hintText: " password",
                    suffixIconConstraints:
                        BoxConstraints(maxWidth: 38, maxHeight: 12),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                        "assets/icons/eye.svg",
                        width: 20,
                        height: 20,
                      ),
                    )),
              ),
              Gap(15),
              TextFormField(
                decoration: InputDecoration(
                    hintText: " confirm  password",
                    suffixIconConstraints:
                        BoxConstraints(maxWidth: 38, maxHeight: 12),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                        "assets/icons/eye.svg",
                        width: 20,
                        height: 20,
                      ),
                    )),
              ),
              Gap(30),
              CustomButton(
                  text: "Login", onTap: () {}, textstyle: getBodyTextStyle()),
              Gap(34),
              Row(
                children: [
                  Expanded(child: Divider()),
                  Gap(10),
                  Text(
                    "Or Login With",
                    style: getSmallTextStyle(),
                  ),
                  Gap(10),
                  Expanded(child: Divider()),
                ],
              ),
              Gap(30),
              social_media_widget()
            ],
          ),
        ),
      ),
    );
  }
}
