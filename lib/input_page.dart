import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_text.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = (selectedGender == Gender.male)
                            ? (null)
                            : (Gender.male);
                      });
                    },
                    child: IconText(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                    color: (selectedGender == Gender.male)
                        ? (activeCardColor)
                        : (inactiveCardColor),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = (selectedGender == Gender.female)
                            ? (null)
                            : (Gender.female);
                      });
                    },
                    child: IconText(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                    color: (selectedGender == Gender.female)
                        ? (activeCardColor)
                        : (inactiveCardColor),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }
}
