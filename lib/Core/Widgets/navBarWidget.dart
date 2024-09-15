import 'package:bookia/Core/Utils/Colors.dart';
import 'package:bookia/Core/contants/assets_icons.dart';
import 'package:bookia/Feature/Home/pages/home_view.dart';
import 'package:bookia/Feature/cart/presention/pages/cartview.dart';
import 'package:bookia/Feature/profile/presention/pages/profileview.dart';
import 'package:bookia/Feature/wishlist/presention/pages/wishlistview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Navbarwidget extends StatefulWidget {
  const Navbarwidget({super.key});

  @override
  State<Navbarwidget> createState() => _NavbarwidgetState();
}

class _NavbarwidgetState extends State<Navbarwidget> {
  @override
  List<Widget> pages = [
    const HomeView(),
    const wishlistview(),
    const cartview(),
    const profileview(),
  ];
  int currentindex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/Home.svg"),
                activeIcon: SvgPicture.asset(
                  "assets/icons/Home.svg",
                  colorFilter:
                      ColorFilter.mode(AppColors.Primary, BlendMode.srcIn),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/Bookmark.svg"),
                activeIcon: SvgPicture.asset(
                  "assets/icons/Bookmark.svg",
                  colorFilter:
                      ColorFilter.mode(AppColors.Primary, BlendMode.srcIn),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/Category.svg"),
                activeIcon: SvgPicture.asset(
                  "assets/icons/Category.svg",
                  colorFilter:
                      ColorFilter.mode(AppColors.Primary, BlendMode.srcIn),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetsIcons.profile),
                activeIcon: SvgPicture.asset(
                  AssetsIcons.profile,
                  colorFilter:
                      ColorFilter.mode(AppColors.Primary, BlendMode.srcIn),
                ),
                label: ''),
          ]),
    );
  }
}
