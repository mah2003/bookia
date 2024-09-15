import 'package:bookia/Core/Functions/Navigation.dart';
import 'package:bookia/Core/Utils/Colors.dart';
import 'package:bookia/Core/Utils/Text_Style.dart';
import 'package:bookia/Core/Widgets/customButton.dart';
import 'package:bookia/Feature/auth/presention/pages/login_view.dart';
import 'package:bookia/Feature/auth/presention/pages/signUp_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/Welcome.png',
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 1,
                ),
                SvgPicture.asset('assets/images/Logo.svg'),
                const Gap(15),
                Text(
                  "Order Your Book Now!",
                  style: getHeadLineTextStyle(),
                ),
                const Spacer(
                  flex: 4,
                ),
                Gap(20),
                CustomButton(
                    text: "Login",
                    onTap: () {
                      push(context, LoginView());
                    },
                    textstyle: getBodyTextStyle()),
                const Gap(15),
                CustomButton(
                    color: AppColors.Background,
                    text: "Register",
                    onTap: () {
                      pushReplacement(context, signupView());
                    },
                    textstyle: getBodyTextStyle()),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
