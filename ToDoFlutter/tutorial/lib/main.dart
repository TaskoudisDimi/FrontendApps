import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text('Hello from first app'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () => 'Test',
      ),
    ),
  ));
}
