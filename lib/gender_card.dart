import 'package:flutter/material.dart';

class GenderCards extends StatelessWidget {
  GenderCards(
      {required String genderText,
      required IconData genderIcon,
      required Color iconColor,
      required Color genderTextColor}) {
    this.genderText = genderText;
    this.genderIcon = genderIcon;
    this.iconColor = iconColor;
    this.genderTextColor = genderTextColor;
  }

  late final String genderText;
  late final IconData genderIcon;
  late final Color iconColor;
  late final Color genderTextColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            genderIcon,
            color: iconColor,
            size: 30,
          ),
          Text(
            genderText,
            style: TextStyle(
                color: genderTextColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
