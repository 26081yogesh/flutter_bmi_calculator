// Import Statements...
import 'bmi_brain.dart';
import 'bmi_result_page.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'gender_card.dart';
import 'height_weight_age_card.dart';
import 'package:page_transition/page_transition.dart';

// main function :- It is the starting point of the app.
void main() => runApp(Calc());

// Stateless Widget
class Calc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFededed),
      ),
      home: CalcState(),
    );
  }
}

// Stateful Widget
class CalcState extends StatefulWidget {
  State<CalcState> createState() => _CalcState();
}

class _CalcState extends State<CalcState> {
  int height = 150; // Height variable
  int weight = 50; // Weight variable
  int age = 18; // age variable
  String gender = "Male"; // gender variable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottomOpacity: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                //***** Male Gender Card *****
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = "Male";
                      });
                    },
                    child: Container(
                      decoration: kContainerBoxDecoration.copyWith(
                        color: gender == "Male"
                            ? Color(0xFF59c9e1)
                            : Color(0xFFededed),
                      ),
                      margin: EdgeInsets.all(15),
                      child: GenderCards(
                        genderText: "MALE",
                        genderIcon: Icons.man,
                        iconColor: gender == "Male"
                            ? Color(0xFFededed)
                            : Color(0xFF59c9e1),
                        genderTextColor: gender == "Male"
                            ? Color(0xFFededed)
                            : Color(0xFF59c9e1),
                      ),
                    ),
                  ),
                ),

                //***** Female Gender Card *****
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = "Female";
                      });
                    },
                    child: Container(
                      decoration: kContainerBoxDecoration.copyWith(
                        color: gender == "Female"
                            ? Color(0xFF59c9e1)
                            : Color(0xFFededed),
                      ),
                      margin: EdgeInsets.all(15),
                      child: GenderCards(
                        genderText: "FEMALE",
                        genderIcon: Icons.woman,
                        iconColor: gender == "Female"
                            ? Color(0xFFededed)
                            : Color(0xFF59c9e1),
                        genderTextColor: gender == "Female"
                            ? Color(0xFFededed)
                            : Color(0xFF59c9e1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //*****Height Card*****
                HeightWeightAgeCard(
                  heightWeightAgeCardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Height",
                        style: kCardHeadingStyle,
                      ),
                      Expanded(
                        child: Row(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            RotatedBox(
                              quarterTurns: 3,
                              child: Slider(
                                max: 200,
                                min: 100,
                                value: height.toDouble(),
                                onChanged: (value) {
                                  setState(() {
                                    height = value.toInt();
                                  });
                                },
                              ),
                            ),
                            Center(
                              child: Text(
                                height.toString(),
                                style: kCardContentTextStyle,
                              ),
                            ),
                            Center(
                              child: Text(
                                "cm",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      //*****Weight Crad*****
                      HeightWeightAgeCard(
                        heightWeightAgeCardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Weight",
                              style: kCardHeadingStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: kCardContentTextStyle,
                                ),
                                Text("kg"),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                    heroTag: 'weightDecreaseBtn',
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                    backgroundColor: Color(0xFF59c9e1),
                                  ),
                                  FloatingActionButton(
                                    heroTag: 'weightIncreaseBtn',
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                    backgroundColor: Color(0xFF59c9e1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //*****Age Card******
                      HeightWeightAgeCard(
                        heightWeightAgeCardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Age",
                              style: kCardHeadingStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kCardContentTextStyle,
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                    heroTag: 'ageDecreaseBtn',
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                    backgroundColor: Color(0xFF59c9e1),
                                  ),
                                  FloatingActionButton(
                                    heroTag: 'ageIncreaseBtn',
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                    backgroundColor: Color(0xFF59c9e1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //*****Calculate Button*****
          Expanded(
            child: GestureDetector(
              onTap: () {
                BmiBrain bmiBrain = BmiBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiResultPage(
                      bmiValue: bmiBrain.calBmi(),
                      bmiCategory: bmiBrain.bmiCategory(),
                    ),
                  ),
                );
              },
              child: Container(
                decoration: kContainerBoxDecoration.copyWith(
                  color: Color(0xFF59c9e1),
                ),
                margin: EdgeInsets.all(15),
                width: double.infinity,
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: kBmiBtnStyle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
