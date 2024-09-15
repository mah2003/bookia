import 'package:bookia/Core/contants/assets_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class cartview extends StatelessWidget {
  const cartview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(AssetsIcons.logo),
      ),
      body: Center(
        child: Text("cart view"),
      ),
    );
  }
}
