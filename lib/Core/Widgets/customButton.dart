import 'package:bookia/Core/Utils/Colors.dart';
import 'package:bookia/Core/Utils/Text_Style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.width = double.infinity,
      this.height = 50,
      required this.text,
      required this.onTap,
      required this.textstyle,
      this.raduis = 8,
      this.color = AppColors.Primary,
      this.isborder = true});
  final double width;
  final double height;
  final String text;
  final Function() onTap;
  final TextStyle? textstyle;
  final double raduis;
  final Color color;
  final bool isborder;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(raduis),
                side: isborder
                    ? BorderSide(color: AppColors.Dark)
                    : BorderSide.none),
            foregroundColor: AppColors.Dark,
          ),
          onPressed: onTap,
          child: Text(
            text,
            style: textstyle ??
                getBodyTextStyle(
                  color: AppColors.Background,
                ),
          ),
        ));
  }
}
