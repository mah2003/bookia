import 'package:bookia/Core/Functions/Navigation.dart';
import 'package:bookia/Core/Utils/Colors.dart';
import 'package:bookia/Core/Utils/Text_Style.dart';
import 'package:bookia/Core/Widgets/backbottonwidget.dart';
import 'package:bookia/Core/Widgets/customButton.dart';
import 'package:bookia/Core/Widgets/navBarWidget.dart';
import 'package:bookia/Feature/auth/presention/pages/signUp_view.dart';
import 'package:bookia/Feature/auth/widgets/social_login_wodget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                onPressed: () {
                  pushReplacement(context, signupView());
                },
                child: Text("Sign Up Now",
                    style: getSmallTextStyle(
                      color: AppColors.Dark,
                    )))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              "Welcome back! Glad to see you, Again!",
              style: getHeadLineTextStyle(),
            ),
            const Gap(32),
            TextFormField(
              decoration: InputDecoration(hintText: "Enter your email"),
            ),
            Gap(15),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter your password",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {},
                    child: Text(
                      "Forget Password",
                      style: getSmallTextStyle(),
                    ))
              ],
            ),
            Gap(30),
            CustomButton(
                text: "Login",
                onTap: () {
                  pushAndRemoveUntill(context, Navbarwidget());
                },
                textstyle: getBodyTextStyle()),
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
    );
  }
}
