import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
          child:
              // Text(
              //   'Hello from first app',
              //   style: TextStyle(
              //       fontSize: 20.0,
              //       fontWeight: FontWeight.bold,
              //       letterSpacing: 2.0,
              //       color: Colors.grey[600]),
              // ),
              // Image(
              //     image:
              //         // NetworkImage(
              //         //     'https://images.unsplash.com/photo-1738830656378-c8f96e01ec50?q=80&w=1802&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              //         AssetImage('assets/image1.jpg'))
              // Icon(
              //       Icons.airport_shuttle,
              //       color: Colors.lightBlue,
              //       size: 50.0,
              //     )
              //     ElevatedButton(
              //       child: const Text('Click Me'),
              //       onPressed: () { print('you clicked me')},
              // ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.mail),
                  label: Text('mail me'))
          // IconButton(
          //   icon: Icon(Icons.woman),
          //   onPressed: () {},
          // )
          ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
