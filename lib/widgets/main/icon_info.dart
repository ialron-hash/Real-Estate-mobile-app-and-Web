import 'package:flutter/material.dart';
import 'package:real_estate_web/constants.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        buildIconInfo(
          context: context,
          icon: Icons.supervisor_account,
          text: '100+',
          label: 'Properties',
        ),
        buildIconInfo(
          context: context,
          icon: Icons.location_city,
          text: '50+',
          label: 'Cities',
        ),
        buildIconInfo(
          context: context,
          icon: Icons.public,
          text: '100+',
          label: 'Countries',
        ),
        buildIconInfo(
          context: context,
          icon: Icons.star,
          text: '100+',
          label: 'Reviews',
        ),
        ],
      ),
    );
  }

  Column buildIconInfo({
    required BuildContext context,
   required IconData? icon,
   required String? text,
   required String? label,
  }) {
    return Column(
        children: [
          Icon(icon, size: 50,),
          SizedBox(height: kDefaultPadding / 2,), 
          Text(text ?? '', style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: kPrimaryColor,
            fontSize: 30,
          ),
          ),
          Text(label ?? '', style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Colors.white,
            fontSize: 20,
          ),
          ),
        ],
      );
  }
}