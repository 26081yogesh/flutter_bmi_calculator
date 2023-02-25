import 'package:flutter/material.dart';

class Reusable_Card extends StatelessWidget {
  Reusable_Card(
      {required Color colour,
      required Widget cardChild,
      required Function() onPress}) {
    this.colour = colour;
    this.cardChild = cardChild;
    this.onPress = onPress;
  }

  late final Color colour;
  late final Widget cardChild;
  late final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          child: cardChild,
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.all(15),
        ),
      ),
    );
  }
}
