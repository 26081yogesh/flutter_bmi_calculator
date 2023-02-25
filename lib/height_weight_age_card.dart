import 'package:flutter/material.dart';
import 'constants.dart';

class HeightWeightAgeCard extends StatelessWidget {
  HeightWeightAgeCard({required Widget heightWeightAgeCardChild}) {
    this.heightWeightAgeCardChild = heightWeightAgeCardChild;
  }

  late final Widget heightWeightAgeCardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: heightWeightAgeCardChild,
        margin: EdgeInsets.all(15),
        decoration: kContainerBoxDecoration,
      ),
    );
  }
}
