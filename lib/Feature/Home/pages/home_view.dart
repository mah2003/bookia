import 'package:bookia/Core/Utils/Colors.dart';
import 'package:bookia/Core/Utils/Text_Style.dart';
import 'package:bookia/Core/Widgets/customButton.dart';
import 'package:bookia/Core/contants/assets_icons.dart';
import 'package:bookia/Feature/Home/widgets/BannerWidget.dart';
import 'package:bookia/Feature/Home/widgets/popular_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SvgPicture.asset(
                AssetsIcons.logo,
                width: 100,
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: SvgPicture.asset(AssetsIcons.alarm)),
              IconButton(
                  onPressed: () {}, icon: SvgPicture.asset(AssetsIcons.search)),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [BannerWidget(), popularbookWidget()],
          ),
        ));
  }
}
