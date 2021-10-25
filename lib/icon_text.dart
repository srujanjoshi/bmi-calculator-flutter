import 'package:flutter/material.dart';
import 'constants.dart';

const double iconSize = 80;

class IconText extends StatelessWidget {
  IconText({this.icon, this.text});

  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(this.icon, size: iconSize),
        SizedBox(
          height: 20,
        ),
        Text(
          this.text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
