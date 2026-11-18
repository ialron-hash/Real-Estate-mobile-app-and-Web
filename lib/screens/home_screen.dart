import 'package:flutter/material.dart';
import 'package:real_estate_web/constants.dart';
import 'package:real_estate_web/responsive.dart';

import '../widgets/menu/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({required this.mainSection, super.key});
  final Widget mainSection;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(flex: 2, child: SideMenuSection()),
                SizedBox(width: kDefaultPadding),
                Expanded(flex: 7, child: mainSection),
                SizedBox(width: kDefaultPadding),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
