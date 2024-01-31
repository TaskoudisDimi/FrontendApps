import 'package:flutter/material.dart';

//In Flutter, the "state" refers to mutable data that can be changed over time. In the context of stateful widgets,
//the state is managed by a separate state object. When the state changes, the setState method is called,
//triggering a rebuild of the widget tree. This process allows you to update the user interface in response
//to user actions or changes in the app's internal state.
// In the provided examples, the counter variable is the state, and the setState method is used to notify Flutter
//that the UI needs to be rebuilt when the counter changes. Stateful widgets are essential when dealing with dynamic data
//or user interactions that affect the appearance of the UI.

//In the context of your code, class _ComplexCounterAppState extends State<ComplexCounterApp>
//indicates that _ComplexCounterAppState is a subclass of State<ComplexCounterApp>.
//This is how you create a state class for a stateful widget in Flutter.

class ComplexCounterApp extends StatefulWidget {
  //This code is creating a constructor for the ComplexCounterApp widget that takes an optional Key parameter.
  //The super(key: key) part is calling the constructor of the superclass (StatefulWidget) and passing the provided key to it.
  const ComplexCounterApp({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  // ignore: library_private_types_in_public_api
  _ComplexCounterAppState createState() => _ComplexCounterAppState();
}

class _ComplexCounterAppState extends State<ComplexCounterApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      counter++;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

//@override is used before the createState method in _ComplexCounterAppState to indicate that this method overrides
//the createState method defined in the StatefulWidget class.
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // TRY THIS: Try changing the color here to a specific color (to
      // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      // change color while the other colors stay the same.
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Complex Counter App'),
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
          children: [
            Text(
              'Counter: $counter',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: incrementCounter,
                  child: const Text('Increment'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: resetCounter,
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
