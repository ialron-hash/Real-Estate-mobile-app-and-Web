import 'package:flutter/material.dart';
import 'package:real_estate_web/constants.dart';
import 'package:real_estate_web/models/recommendation.dart' as model;
import 'package:real_estate_web/widgets/main/recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Client Recommendation: ',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                model.demoRecommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: RecommendationCard(
                    recommendation: model.demoRecommendations[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
