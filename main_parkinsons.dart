import 'package:flutter/material.dart';
import 'app_button_widget.dart';

class MainParkinsons extends StatefulWidget {
  const MainParkinsons({Key? key}) : super(key: key);

  @override
  _MainParkinsonsState createState() => _MainParkinsonsState();
}

class _MainParkinsonsState extends State<MainParkinsons> {
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
                "PARKINSON'S DISEASE RECOVERY EXERCISES",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            AppButtonWidget(
              title: "Recovery Exercise-1",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, "/parkinsons");
              },
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/parkinsons1");
              },
              title: "Recovery Exercise-2",
              titleColor: Color.fromARGB(255, 254, 254, 254),
              buttonBackgroundColor: Color.fromARGB(209, 22, 89, 224),
              buttonBorderColor: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              title: "Recovery Exercise-3",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, "/parkinsons2");
              },
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/parkinsons3");
              },
              title: "Recovery Exercise-4",
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
