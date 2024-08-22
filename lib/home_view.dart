import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_6/colors.dart';
import 'package:flutter_application_6/result_view.dart';

class HomeView extends StatefulWidget {
  /////ده الفايل بتاعت الشاشه
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int weight = 70;
  int age = 24;
  int height = 170;
  bool ismale = true;
  //////ده ال state بتاعت الشاشه
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appcolors.black,
        appBar: AppBar(
          backgroundColor: Appcolors.black,
          centerTitle: true,
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            // male and female
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          ismale = true;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: (ismale)
                                  ? Appcolors.red
                                  : Appcolors.secandary),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male, size: 80, color: Colors.white),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Male",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ))),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: (!ismale)
                                  ? Appcolors.red
                                  : Appcolors.secandary),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female, size: 80, color: Colors.white),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Female",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ))),
                    ),
                  )
                ],
              ),
            ),
            // height
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Appcolors.secandary,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Height", style: TextStyle(color: Colors.white)),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900)),
                          SizedBox(
                            width: 3,
                          ),
                          Text("CM",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 80,
                        max: 220,
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                        activeColor: Appcolors.red,
                        inactiveColor: Appcolors.shadow,
                      )
                    ],
                  ),
                ),
              ),
            )
            // age and weight
            ,

            Expanded(
                child: Row(children: [
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolors.secandary,
                    ),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Weight", style: TextStyle(color: Colors.white)),
                        Text(weight.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                color: Colors.white,
                                style: IconButton.styleFrom(
                                    backgroundColor: Appcolors.shadow),
                                onPressed: () {
                                  if (weight > 30) {
                                    setState(() {
                                      weight--;
                                    });
                                  }
                                },
                                icon: Icon(Icons.remove)),
                            SizedBox(width: 5),
                            IconButton(
                                color: Colors.white,
                                style: IconButton.styleFrom(
                                    backgroundColor: Appcolors.shadow),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icon(Icons.add))
                          ],
                        )
                      ],
                    ))),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolors.secandary,
                    ),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Age", style: TextStyle(color: Colors.white)),
                        Text(age.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                color: Colors.white,
                                style: IconButton.styleFrom(
                                    backgroundColor: Appcolors.shadow),
                                onPressed: () {
                                  if (age > 0) {
                                    setState(() {
                                      age--;
                                    });
                                  }
                                },
                                icon: Icon(Icons.remove)),
                            SizedBox(width: 5),
                            IconButton(
                                color: Colors.white,
                                style: IconButton.styleFrom(
                                    backgroundColor: Appcolors.shadow),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: Icon(Icons.add))
                          ],
                        )
                      ],
                    ))),
              ),
            ])),
            // calc button
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // calculate bmi
// bmi = mass(kg)/height *height (m)
                  double res = (weight) / (height * height * 0.01 * 0.01);
// navigation to result
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ResultView(
                      result: res,
                    );
                  }));
                },
                child: Text("calculate"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Appcolors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            )
          ]),
        ));
  }
}
