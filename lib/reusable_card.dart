import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.child});

  final Color color; //Required color property
  final Widget child; //Optional child Widget

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: this.child,
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
