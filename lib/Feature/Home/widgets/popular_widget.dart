import 'package:bookia/Core/Utils/Colors.dart';
import 'package:bookia/Core/Utils/Text_Style.dart';
import 'package:bookia/Core/Widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class popularbookWidget extends StatelessWidget {
  const popularbookWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Featured Books",
            style: getHeadLineTextStyle(),
          ),
          const Gap(15),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 300,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10),
            itemCount: 6,
            itemBuilder: (BuildContext Context, int index) {
              return Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.Grey),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/image 6.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    const Gap(5),
                    Row(
                      children: [
                        Text(
                          "225",
                          style: getBodyTextStyle(),
                        ),
                        const Spacer(),
                        CustomButton(
                          height: 30,
                          width: 75,
                          color: AppColors.Dark,
                          text: "Buy",
                          textstyle: getSmallTextStyle(),
                          onTap: () {},
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
