import 'package:flutter/material.dart';
import '../constans.dart';

class IconContent extends StatelessWidget {
  // const IconContent({Key? key}) : super(key: key);

  IconContent({this.icon, this.label});
  final String? label;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          // FontAwesomeIcons.mars,
          this.icon!,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.label!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
