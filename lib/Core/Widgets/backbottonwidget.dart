import 'package:bookia/Core/Utils/Colors.dart';
import 'package:flutter/material.dart';

class backbutton_widget extends StatelessWidget {
  const backbutton_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        width: 41,
        height: 41,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.Background,
          border: Border.all(color: AppColors.Background, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          Icons.arrow_back_ios_rounded,
          size: 22,
        ),
      ),
    );
  }
}
