import 'package:bookia/Core/Utils/Colors.dart';
import 'package:bookia/Core/Utils/Text_Style.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({
    super.key,
  });

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  int currentBanner = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (BuildContext Context, int itemIndex,
                    int PageViewIndex) =>
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/Rectangle 13.png",
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 14,
                      left: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Find out the best books to read\nwhen you don\’t even know \nwhat to read!!!",
                            style:
                                getSmallTextStyle(color: AppColors.Background),
                          ),
                          Gap(10),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 7),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.Background),
                            child: Text(
                              "Explore",
                              style: getSmallTextStyle(
                                  fontsize: 14, color: AppColors.Primary),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
            options: CarouselOptions(
              height: 150,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (itemIndex, reason) {
                setState(() {
                  currentBanner = itemIndex;
                });
              },
              scrollDirection: Axis.horizontal,
            )),
        Gap(8),
        SmoothPageIndicator(
          controller: PageController(initialPage: currentBanner),
          count: 4,
          effect: const ExpandingDotsEffect(
              dotColor: AppColors.Darkgray, activeDotColor: AppColors.Primary),
          onDotClicked: (index) {},
        ),
      ],
    );
  }
}
