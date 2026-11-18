import 'package:flutter/material.dart';
import 'package:real_estate_web/constants.dart';
import 'package:real_estate_web/models/projects.dart';
import 'package:real_estate_web/responsive.dart';
import 'package:real_estate_web/widgets/menu/project_cord.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Projects',
          style: Theme.of(context).textTheme.titleLarge!
              .copyWith(color: Colors.white, fontSize: 30),
        ),
        Responsive(
          desktop:buildGridView(
            itemCount:demoProjects.length,
            crossAxsitCount:3,
            childAspectRatio:0.7,
            itemBuilder:   (context, index) =>
            ProjectCard(project: demoProjects[index])),
          tablet:buildGridView(
            itemCount:demoProjects.length,
            crossAxsitCount:MediaQuery.of(context).size.width< 900 ? 2:3,
            childAspectRatio:0.7,
            itemBuilder:   (context, index) =>
            ProjectCard(project: demoProjects[index])), 
          mobileLarge:buildGridView(
            itemCount:demoProjects.length,
            crossAxsitCount:2,
            childAspectRatio:0.7,
            itemBuilder:   (context, index) =>
            ProjectCard(project: demoProjects[index])), 
          mobile: buildGridView(
            itemCount:demoProjects.length,
            crossAxsitCount:1,
            childAspectRatio:0.7,
            itemBuilder:   (context, index) =>
            ProjectCard(project: demoProjects[index]),

        ),)
      ],
    );
  }

  GridView buildGridView(
    {
    required int itemCount,
    required int crossAxsitCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
    }
  ) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:crossAxsitCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: kDefaultPadding,
          mainAxisSpacing: kDefaultPadding,
        ),
        itemBuilder:itemBuilder
      );
  }
}
