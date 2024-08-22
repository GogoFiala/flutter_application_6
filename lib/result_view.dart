import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_6/colors.dart';

class ResultView extends StatelessWidget {
  ResultView({super.key, required this.result});
  final double result;
  Color color = Colors.white;
  // <= 18.4 underweight
  // 18.5-24.9 normal
  // >= 40.obese
  String getclass() {
    if (result <= 18.5) {
      color = Colors.red;
      return "Underweight";
    } else if (result <= 24.9) {
      color = Colors.green;
      return "Normal";
    } else if (result <= 39.9) {
      color = Colors.yellow;
      return "Overweight";
    } else {
      color = Colors.blue;
      return "Obese";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appcolors.black,
        appBar: AppBar(
          backgroundColor: Appcolors.black,
          foregroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
          // centerTitle: true,
          // title: Text(
          //   "Result",
          //   style: TextStyle(
          //       color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
          // ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Your Result",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Appcolors.secandary),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          getclass(),
                          style: TextStyle(fontSize: 30, color: color),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          result.toStringAsFixed(2),
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("")
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    backgroundColor: Appcolors.red,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "ReCalculator",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
