import 'package:flutter/material.dart';
import 'app_button_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 25, right: 25, bottom: 16),
              child: Text(
                "Your Personalized Physical Therapy Companion",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            AppButtonWidget(
              title: "Exercise Library",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, "/lib");
              },
            ),
            SizedBox(
              height: 15,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/todo");
              },
              title: "Target Setting",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
            ),
            SizedBox(
              height: 15,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/add_todo");
              },
              title: "Feedback Form",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
            ),
            SizedBox(
              height: 15,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/about");
              },
              title: "About",
              titleColor: Colors.black,
              buttonBackgroundColor: Colors.white,
              buttonBorderColor: Colors.black,
            ),
            SizedBox(
              height: 15,
            ),
          ]),
        ),
      ),
    );
  }
}
