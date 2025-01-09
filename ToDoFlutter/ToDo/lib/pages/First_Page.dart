// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:assistantapp/pages/Second_Page.dart';
import 'package:assistantapp/pages/home_page_tutorial.dart';
import 'package:assistantapp/pages/profile_page.dart';
import 'package:assistantapp/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  final List _pages = [
    //homepage
    HomePageTutorial(),

    //profilepage
    ProfilePage(),

    //settingspage
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page"),
      ),
      // body: Center(
      //     child: ElevatedButton(
      //   child: Text("Go to Second Page"),
      //   onPressed: () {
      //     // Navigator.push(
      //     //     context,
      //     //     MaterialPageRoute(
      //     //       builder: (context) => SecondPage(),
      //     //     ));
      //     Navigator.pushNamed(context, '/secondpage');
      //   },
      // )),
      ////////////DRAWER
      // drawer: Drawer(
      //     backgroundColor: Colors.deepPurple[100],
      //     child: Column(
      //       children: [
      //         DrawerHeader(
      //             child: Icon(
      //           Icons.favorite,
      //           size: 48,
      //         )),
      //         ListTile(
      //           leading: Icon(Icons.home),
      //           title: Text("HOME"),
      //           onTap: () {
      //             Navigator.pop(context);
      //             Navigator.pushNamed(context, '/homepage');
      //           },
      //         ),
      //         ListTile(
      //           leading: Icon(Icons.home),
      //           title: Text("SETTINGS"),
      //           onTap: () {
      //             Navigator.pop(context);
      //             Navigator.pushNamed(context, '/settingspage');
      //           },
      //         )
      //       ],
      //     )),
      //////////BOTOM NAVIGATOR
      body: _pages[0],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
      ),
    );
  }
}
