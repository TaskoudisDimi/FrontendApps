/////////TUTORIAL/////////////////
// ignore_for_file: prefer_const_constructors

import 'package:assistantapp/pages/First_Page.dart';
import 'package:assistantapp/pages/Second_Page.dart';
import 'package:assistantapp/pages/home_page_tutorial.dart';
import 'package:assistantapp/pages/profile_page.dart';
import 'package:assistantapp/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  /* 
  // VARIABLES: You can store different types of info into variables
  String name = "Dimitris Taskou";
  int age = 29;
  double pi = 3.14;
  bool isBegginer = true;
  */

  /* 
  BASIC MATH OPERATIONS:
  add = +
  subtract = -
  multiply = *
  devide = /
  remainder = %
  */

  /*
  COMPARISON OPERATORS:
  equal to -> ==
  not equal -> !=
  greater than -> >
  less than -> <

  */

  /*
  LOGICAL OPERATORS:
  AND = &&
  OR = ||
  */

  /*
  CONTROL FLOW:
  */
  /*
    List numbers = [1, 2, 3, 4];
    void printNumber() {
      for (int i = 0; i < numbers.length; i++) {
        print(numbers[i]);
      }
    }
  */

  /*
  ///SET: underordered collection of unique elements
  ///List can have duplicates.
  Set<String> uniqueNames = {"Test1", "Test2", "Test3"};

  ///Map: stored as key-value pairs
  Map user = {'Name': "Dimitris", 'Age': 29, 'Height': 178};
  */

  //Used by the ListView example:
  List names = ["Test1", "Test2", "Test3"];

  //FUNCTION AND METHODS
  void userTapped() {
    print("User Tapped!");
  }

  // // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //         backgroundColor: Colors.deepPurple[200],
  //         appBar: AppBar(
  //             title: Text("My App"),
  //             backgroundColor: Colors.amberAccent[200],
  //             elevation: 0,
  //             leading: Icon(Icons.menu),
  //             actions: [
  //               IconButton(onPressed: () {}, icon: Icon(Icons.logout))
  //             ]),
  //         body:
  //             //LISTVIEW
  //             // ListView(
  //             //   //ListView has srollbar
  //             //   //scrollDirection: Axis.vertical,
  //             //   children: [
  //             //     //1st box
  //             //     Container(
  //             //       height: 250,
  //             //       color: Colors.amber,
  //             //     ),
  //             //     //2nd box
  //             //     Container(
  //             //       height: 250,
  //             //       color: Colors.amber[200],
  //             //     ),
  //             //     //3rd box
  //             //     Container(
  //             //       height: 250,
  //             //       color: Colors.amber[400],
  //             //     ),
  //             //   ],
  //             // )
  //             // Center(
  //             //   child: Container(
  //             //       height: 300,
  //             //       width: 300,
  //             //       decoration: BoxDecoration(
  //             //           color: Colors.deepOrange,
  //             //           borderRadius: BorderRadius.circular(20)),
  //             //       padding: EdgeInsets.all(25),
  //             // child: Text(
  //             //   "Hello Dimitri",
  //             //   style: TextStyle(
  //             //       color: Colors.white,
  //             //       fontSize: 28,
  //             //       fontWeight: FontWeight.bold),
  //             // )),
  //             // child: Icon(Icons.favorite, color: Colors.white, size: 64)),
  //             // )
  //             //DISPLAY TEXT ON THE LISTVIEW
  //             // ListView.builder(
  //             //     itemCount: names.length,
  //             //     itemBuilder: (context, index) => ListTile(
  //             //           title: Text(names[index].toString()),
  //             //         ))
  //             //GRIDVIEW
  //             //     GridView.builder(
  //             //   itemCount: 64,
  //             //   gridDelegate:
  //             //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
  //             //   itemBuilder: (context, index) => Container(
  //             //     color: Colors.black12,
  //             //     margin: EdgeInsets.all(2),
  //             //   ),
  //             // )
  //             //STACK
  //             //     Stack(
  //             //   alignment: Alignment.bottomRight,
  //             //   children: [
  //             //     Container(
  //             //       height: 300,
  //             //       width: 300,
  //             //       color: Colors.deepPurple,
  //             //     ),
  //             //     Container(
  //             //       height: 200,
  //             //       width: 200,
  //             //       color: Colors.deepPurple[200],
  //             //     ),
  //             //     Container(
  //             //       height: 100,
  //             //       width: 100,
  //             //       color: Colors.deepPurple[400],
  //             //     )
  //             //   ],
  //             // )
  //             //GESTURE DETECTOR
  //             //     Center(
  //             //   child: GestureDetector(
  //             //     onTap: userTapped,
  //             //     child: Container(
  //             //         height: 200,
  //             //         width: 200,
  //             //         color: Colors.deepPurple[300],
  //             //         child: Center(child: Text("Tap me!"))),
  //             //   ),
  //             // )
  //             ////////////////////////
  //             Container()),
  //   );
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePageTutorial(),
        routes: {
          '/firstpage': (context) => FirstPage(),
          '/homepage': (context) => HomePageTutorial(),
          '/settingspage': (context) => SettingsPage(),
        });
  }
}
