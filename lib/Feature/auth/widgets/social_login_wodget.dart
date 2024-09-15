import 'package:bookia/Core/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class social_media_widget extends StatelessWidget {
  const social_media_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        socialCart(
          image: "assets/icons/google_ic.svg",
          ontap: () {},
        ),
        Gap(8),
        socialCart(
          image: "assets/icons/facebook_ic.svg",
          ontap: () {},
        ),
        Gap(8),
        socialCart(
          image: "assets/icons/cib_apple.svg",
          ontap: () {},
        ),
      ],
    );
  }
}

class socialCart extends StatelessWidget {
  const socialCart({
    super.key,
    required this.image,
    required this.ontap,
  });
  final String image;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: AppColors.Background,
          border: Border.all(color: AppColors.Background, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: SvgPicture.asset(image),
      ),
    ));
  }
}
