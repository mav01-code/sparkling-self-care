import 'package:flutter/material.dart';
import 'app_button_widget.dart';

class MainBack extends StatefulWidget {
  const MainBack({Key? key}) : super(key: key);

  @override
  _MainBackState createState() => _MainBackState();
}

class _MainBackState extends State<MainBack> {
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
                "BACK PAIN RECOVERY EXERCISES",
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
                Navigator.pushNamed(context, "/back");
              },
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/back1");
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
                Navigator.pushNamed(context, "/back2");
              },
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/back3");
              },
              title: "Recovery Exercise-4",
              titleColor: Color.fromARGB(255, 254, 254, 254),
              buttonBackgroundColor: Color.fromARGB(209, 22, 89, 224),
              buttonBorderColor: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              title: "Recovery Exercise-5",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, "/back4");
              },
            ),
            SizedBox(
              height: 10,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/back5");
              },
              title: "Recommended Medicines",
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
