import 'package:flutter/material.dart';

import 'recommendations.dart';

import 'package:real_estate_web/screens/home_screen.dart';

import './home_banner.dart';
import './icon_info.dart';
import './projects.dart';

class MainSection extends StatefulWidget {
  const MainSection({super.key});

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: Scrollbar(
        controller: _scrollController,
        thumbVisibility: true,
        interactive: true,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [HomeBanner(), IconInfo(), Projects(), Recommendations()],
          ),
        ),
      ),
    );
  }
}
