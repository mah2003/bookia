import 'package:bookia/Core/Functions/Navigation.dart';
import 'package:bookia/Core/Utils/Text_Style.dart';
import 'package:bookia/Feature/Intro/welcomeview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      pushReplacement(context, WelcomeView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/Logo.svg'),
            const Gap(15),
            Text(
              "Order Your Book Now!",
              style: getHeadLineTextStyle(),
            )
          ],
        ),
      ),
    );
  }
}
