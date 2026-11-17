import 'package:flutter/material.dart';
import 'package:real_estate_web/screens/home_screen.dart';
import 'package:real_estate_web/widgets/main/home_banner.dart';
import 'package:real_estate_web/widgets/main/icon_info.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
          ],
        ),
      ),
    );  
  }
}