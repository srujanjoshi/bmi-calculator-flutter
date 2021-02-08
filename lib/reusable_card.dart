import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.onTap, this.color, this.child});

  final Color color; //Required color property
  final Widget child; //Optional child Widget
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: this.child,
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
