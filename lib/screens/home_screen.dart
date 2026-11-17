import 'package:flutter/material.dart';

import '../widgets/menu/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({required this.mainSection, super.key});
  final Widget mainSection;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: SideMenuSection()),
                Expanded(
                  flex: 7,
                  child: mainSection,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
