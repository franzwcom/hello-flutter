import 'package:flutter/material.dart';

var appName = "Franz G";

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appName.toUpperCase(),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Image.asset('assets/images/pomegranate.png'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => true,
        child: Text('press'),
        backgroundColor: Colors.green,
      ),
    );
  }
}
