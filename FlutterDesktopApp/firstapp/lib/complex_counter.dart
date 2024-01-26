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

  @override
  // ignore: library_private_types_in_public_api
  _ComplexCounterAppState createState() => _ComplexCounterAppState();
}

class _ComplexCounterAppState extends State<ComplexCounterApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complex Counter App'),
      ),
      body: Center(
        child: Column(
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
