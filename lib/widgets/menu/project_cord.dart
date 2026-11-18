import 'package:flutter/material.dart';
import 'package:real_estate_web/constants.dart';
import 'package:real_estate_web/models/projects.dart';


class ProjectCard extends StatelessWidget {
  const new({required this.project, super.key});
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(project.image!, fit: BoxFit.cover),
          SizedBox(height: kDefaultPadding),
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: kDefaultPadding),
          Expanded(
            child: Text(
              project.description!,
              style: TextStyle(height: 1.5, fontSize: 9, color: Colors.white38),
            ),
          ),
          SizedBox(height: kDefaultPadding),
          TextButton(
            onPressed: () {},
            child: Text('More Info >', style: TextStyle(color: kPrimaryColor)),
          ),
        ],
      ),
    );
  }
}
