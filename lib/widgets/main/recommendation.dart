import 'package:flutter/material.dart';
import 'package:real_estate_web/constants.dart';
import 'package:real_estate_web/models/recommendation.dart' as model;




class RecommendationCard extends StatelessWidget {
  const RecommendationCard({super.key, required this.recommendation});

  final model.Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 240,
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recommendation.image!),
            ),
            title: Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            subtitle: Text(
              recommendation.source!,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Expanded(
            child: Text(
              recommendation.text!,
              style: TextStyle(height: 1.5),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            ),
          ),
        ],
      ),
    );
  }
}
