import 'package:flutter/material.dart';
// import 'complex_counter.dart';

// The main() function is the entry point of the Flutter app. It calls runApp() and passes an instance of MyApp.
// MyApp is a stateless widget representing the overall structure of the app. It uses MaterialApp to define the app's visual structure.
// MyHomePage is a stateful widget that represents the home page of the app. It has a state class _MyHomePageState.
// _MyHomePageState maintains the state of the home page, including the counter value (_counter).
// The build method of _MyHomePageState defines the UI of the home page. It uses a Scaffold widget for the basic app structure.
// The app has an AppBar with a title and a body that displays the counter value.
// The floatingActionButton is a button that increments the counter when pressed.
// The setState method is used to update the UI when the counter is incremented.

void main() {
  runApp(const MyApp());
}

// In Flutter, widgets are the basic building blocks of the user interface.
//A widget can represent a structural element (like a button or a container)
//or a functional element (like a page or a form). Widgets are used to describe
//the structure and behavior of the UI in a Flutter app.
//Widgets can be are the follows: Text, Button, Row, Column, Image

// The widget tree is built from the root widget (usually a MaterialApp or a WidgetsApp) and extends down to the leaf widgets.

//When state changes occur in a stateful widget, the widget tree is rebuilt, updating the UI to reflect the new state.

// 1)Stateless Widget:
// A StatelessWidget is a widget that doesn't have mutable state. It means once a StatelessWidget is created,
//its properties cannot change. Stateless widgets are used when the part of the user interface you're describing can be entirely based on its configuration,
//which means it doesn't change over time.
// Stateless widgets are created by extending the StatelessWidget class and overriding the build method.

// 2)Stateful Widget:
// A StatefulWidget is a widget that has mutable state. It means the widget can change its internal state during its lifetime.
//Stateful widgets are used when the part of the user interface you're describing can change dynamically.
// Stateful widgets consist of two classes: the widget itself (extending StatefulWidget) and the state class (extending State).
//The state class holds the mutable state.

//-------------------------------Simple counter
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

// The Scaffold widget is a basic structure for a Material Design page.
// It provides a framework for the primary visual elements of an app's UI,
// including the app bar, body, floating action button, and more.
// It is a commonly used widget to structure the overall layout of a screen.

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Simple Flutter App'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Counter:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// //-------------------------------More Complex counter
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const ComplexCounterApp(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter"),
        backgroundColor: Colors.green, // Set the background color explicitly
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Floating Action Button');
          },
          child: const Icon(Icons.add)),
    );
  }
}
