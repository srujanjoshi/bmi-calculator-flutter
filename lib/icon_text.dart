import 'package:flutter/material.dart';

const double iconSize = 80;
const TextStyle style = TextStyle(
  fontSize: 20,
  color: Color(0xFF8D8E98),
);

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
          style: style,
        )
      ],
    );
  }
}
