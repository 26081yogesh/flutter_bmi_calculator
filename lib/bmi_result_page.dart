// Import statements
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'constants.dart';

class BmiResultPage extends StatelessWidget {
  BmiResultPage({required String bmiValue, required String bmiCategory}) {
    this.bmiValue = bmiValue;
    this.bmiCategory = bmiCategory;
  }

  late final String bmiValue;
  late final String bmiCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
        title: Text(
          "BMI Result",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottomOpacity: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        bmiValue.split('.')[0],
                        style: TextStyle(
                            fontSize: 100, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ".${bmiValue.split('.')[1]}",
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                ),
                Text(
                  bmiCategory,
                  style: kBmiCategoryTextStyle,
                ),

                //*****BMI GUAGE*****
                SfRadialGauge(
                  enableLoadingAnimation: true,
                  axes: <RadialAxis>[
                    RadialAxis(
                      canScaleToFit: true,
                      interval: 2,
                      minimum: 0,
                      maximum: 40,
                      ranges: <GaugeRange>[
                        GaugeRange(
                            startValue: 0, endValue: 18.4, color: Colors.green),
                        GaugeRange(
                            startValue: 18.5,
                            endValue: 24.9,
                            color: Colors.yellow),
                        GaugeRange(
                            startValue: 25, endValue: 29.9, color: Colors.red),
                        GaugeRange(
                            startValue: 30,
                            endValue: 49,
                            color: Colors.red[900])
                      ],
                      pointers: <GaugePointer>[
                        NeedlePointer(value: double.parse(bmiValue)),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),

          //*****ReCalculate Button*****
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: kContainerBoxDecoration.copyWith(
                  color: Color(0xFF59c9e1),
                ),
                margin: EdgeInsets.all(15),
                width: double.infinity,
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
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
