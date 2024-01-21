import 'package:flutter/material.dart';
import 'package:selfcare/about.dart';
import 'package:selfcare/back.dart';
import 'package:selfcare/back1.dart';
import 'package:selfcare/back2.dart';
import 'package:selfcare/back3.dart';
import 'package:selfcare/back4.dart';
import 'package:selfcare/back5.dart';

import 'package:selfcare/diabetes.dart';
import 'package:selfcare/diabetes1.dart';
import 'package:selfcare/diabetes2.dart';
import 'package:selfcare/diabetes3.dart';
import 'package:selfcare/diabetes4.dart';
import 'package:selfcare/exercise_lib.dart';
import 'package:selfcare/feedback.dart';

import 'package:selfcare/home.dart';
import 'package:selfcare/login.dart';
import 'package:selfcare/main_back.dart';
import 'package:selfcare/main_diabetes.dart';
import 'package:selfcare/main_musculo.dart';
import 'package:selfcare/main_ortho.dart';
import 'package:selfcare/main_paralysis.dart';
import 'package:selfcare/main_parkinsons.dart';
import 'package:selfcare/main_pulmonary.dart';
import 'package:selfcare/main_splash.dart';
import 'package:selfcare/main_sports.dart';
import 'package:selfcare/main_stretches.dart';
import 'package:selfcare/main_stroke.dart';
import 'package:selfcare/musculo.dart';
import 'package:selfcare/musculo1.dart';
import 'package:selfcare/musculo2.dart';
import 'package:selfcare/musculo3.dart';
import 'package:selfcare/musculo4.dart';
import 'package:selfcare/ortho.dart';
import 'package:selfcare/ortho1.dart';
import 'package:selfcare/ortho2.dart';
import 'package:selfcare/ortho3.dart';
import 'package:selfcare/ortho4.dart';
import 'package:selfcare/paralysis.dart';
import 'package:selfcare/paralysis1.dart';
import 'package:selfcare/paralysis2.dart';
import 'package:selfcare/paralysis3.dart';
import 'package:selfcare/paralysis4.dart';
import 'package:selfcare/paralysis5.dart';
import 'package:selfcare/parkinsons.dart';
import 'package:selfcare/parkinsons1.dart';
import 'package:selfcare/parkinsons2.dart';
import 'package:selfcare/parkinsons3.dart';

import 'package:selfcare/progress.dart';
import 'package:selfcare/pulmonary.dart';
import 'package:selfcare/pulmonary1.dart';
import 'package:selfcare/pulmonary2.dart';
import 'package:selfcare/pulmonary3.dart';
import 'package:selfcare/pulmonary4.dart';
import 'package:selfcare/pulmonary5.dart';
import 'package:selfcare/signup.dart';
import 'package:selfcare/sport.dart';
import 'package:selfcare/sport1.dart';
import 'package:selfcare/sport2.dart';
import 'package:selfcare/sport3.dart';
import 'package:selfcare/sport4.dart';
import 'package:selfcare/sport5.dart';
import 'package:selfcare/stretches.dart';
import 'package:selfcare/stretches1.dart';
import 'package:selfcare/stretches2.dart';
import 'package:selfcare/stretches3.dart';
import 'package:selfcare/stretches4.dart';
import 'package:selfcare/stroke.dart';
import 'package:selfcare/stroke1.dart';
import 'package:selfcare/stroke2.dart';
import 'package:selfcare/stroke3.dart';
import 'package:selfcare/stroke4.dart';
import 'package:selfcare/stroke5.dart';
import 'package:selfcare/todo_list.dart';
import 'package:selfcare/add_todo_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        "/main": (context) => MainSplash(),
        "/login": (context) => Login(),
        "/signup": (context) => Signup(),
        "/home": (context) => Home(),
        "/stroke": (context) => Stroke(),
        "/lib": (context) => ExerciseLib(),
        "/sport": (context) => Sport(),
        "/stretches": (context) => Stretches(),
        "/diabetes": (context) => Diabetes(),
        "/back": (context) => Back(),
        "/paralysis": (context) => Paralysis(),
        "/parkinsons": (context) => Parkinsons(),
        "/musculo": (context) => Musculo(),
        "/pulmonary": (context) => Pulmonary(),
        "/ortho": (context) => Ortho(),
        "/progress": (context) => Progress(),
        "/stroke1": (context) => Stroke1(),
        "/sport1": (context) => Sport1(),
        "/sport2": (context) => Sport2(),
        "/main_stroke": (context) => MainStroke(),
        "/main_sports": (context) => MainSports(),
        "/main_stretches": (context) => MainStretches(),
        "/main_diabetes": (context) => MainDiabetes(),
        "/main_back": (context) => MainBack(),
        "/main_paralysis": (context) => MainParalysis(),
        "/main_parkinsons": (context) => MainParkinsons(),
        "/main_musculo": (context) => MainMusculo(),
        "/main_pulmonary": (context) => MainPulmonary(),
        "/main_ortho": (context) => MainOrtho(),
        "/stroke2": (context) => Stroke2(),
        "/stroke3": (context) => Stroke3(),
        "/stroke4": (context) => Stroke4(),
        "/stroke5": (context) => Stroke5(),
        "/sport3": (context) => Sport3(),
        "/sport4": (context) => Sport4(),
        "/sport5": (context) => Sport5(),
        "/stretches1": (context) => Stretches1(),
        "/stretches2": (context) => Stretches2(),
        "/stretches3": (context) => Stretches3(),
        "/stretches4": (context) => Stretches4(),
        "/diabetes1": (context) => Diabetes1(),
        "/diabetes2": (context) => Diabetes2(),
        "/diabetes3": (context) => Diabetes3(),
        "/diabetes4": (context) => Diabetes4(),
        "/musculo1": (context) => Musculo1(),
        "/musculo2": (context) => Musculo2(),
        "/musculo3": (context) => Musculo3(),
        "/musculo4": (context) => Musculo4(),
        "/back1": (context) => Back1(),
        "/back2": (context) => Back2(),
        "/back3": (context) => Back3(),
        "/back4": (context) => Back4(),
        "/back5": (context) => Back5(),
        "/paralysis1": (context) => Paralysis1(),
        "/paralysis2": (context) => Paralysis2(),
        "/paralysis3": (context) => Paralysis3(),
        "/paralysis4": (context) => Paralysis4(),
        "/paralysis5": (context) => Paralysis5(),
        "/parkinsons1": (context) => Parkinsons1(),
        "/parkinsons2": (context) => Parkinsons2(),
        "/parkinsons3": (context) => Parkinsons3(),
        "/pulmonary1": (context) => Pulmonary1(),
        "/pulmonary2": (context) => Pulmonary2(),
        "/pulmonary3": (context) => Pulmonary3(),
        "/pulmonary4": (context) => Pulmonary4(),
        "/pulmonary5": (context) => Pulmonary5(),
        "/ortho1": (context) => Ortho1(),
        "/ortho2": (context) => Ortho2(),
        "/ortho3": (context) => Ortho3(),
        "/ortho4": (context) => Ortho4(),
        "/about": (context) => About(),
        "/feedback": (context) => FeedBack(),
        "/todo": (context) => TodoList(),
        "/add_todo": (context) => AddTodoTask(),
      },
      initialRoute: "/main",
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
