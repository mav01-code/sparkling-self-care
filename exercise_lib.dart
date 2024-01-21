import 'package:flutter/material.dart';
import 'app_button_widget.dart';

class ExerciseLib extends StatefulWidget {
  const ExerciseLib({Key? key}) : super(key: key);

  @override
  _ExerciseLibState createState() => _ExerciseLibState();
}

class _ExerciseLibState extends State<ExerciseLib> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Sparkling self-care",
              selectionColor: Colors.black,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset("assets/logo1.png", height: 200, width: 200),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 25, right: 25, bottom: 16),
              child: Text(
                "EXERCISE LIBRARY",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            AppButtonWidget(
              title: "Stroke Recovery",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, "/main_stroke");
              },
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/main_sports");
              },
              title: "Sport Injuries",
              titleColor: Color.fromARGB(255, 254, 254, 254),
              buttonBackgroundColor: Color.fromARGB(209, 22, 89, 224),
              buttonBorderColor: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              title: "Basic Stretches",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, "/main_stretches");
              },
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/main_diabetes");
              },
              title: "Diabetes",
              titleColor: Color.fromARGB(255, 254, 254, 254),
              buttonBackgroundColor: Color.fromARGB(209, 22, 89, 224),
              buttonBorderColor: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              title: "Back Pain",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, "/main_back");
              },
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/main_paralysis");
              },
              title: "Paralysis(Bell's Palsy)",
              titleColor: Color.fromARGB(255, 254, 254, 254),
              buttonBackgroundColor: Color.fromARGB(209, 22, 89, 224),
              buttonBorderColor: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/main_parkinsons");
              },
              title: "Parkinson's Disease",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/main_musculo");
              },
              title: "MusculoSkeletal Exercises",
              titleColor: Color.fromARGB(255, 254, 254, 254),
              buttonBackgroundColor: Color.fromARGB(209, 22, 89, 224),
              buttonBorderColor: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/main_pulmonary");
              },
              title: "Pulmonary Exercises",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/main_ortho");
              },
              title: "Orthopedic Exercises",
              titleColor: Color.fromARGB(255, 254, 254, 254),
              buttonBackgroundColor: Color.fromARGB(209, 22, 89, 224),
              buttonBorderColor: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
