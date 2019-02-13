import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de usuarios'),
      ),
      body: Text('Lista usuarios'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_box),
        onPressed: () {
          print('Pulsado');
        },
      ),
    );
  }
}
