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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.all(20.0),
              child: Text('text inside container')),
          Container(
              color: Colors.greenAccent,
              padding: EdgeInsets.all(30.0),
              child: Text('text inside container')),
          Container(
              color: Colors.yellowAccent,
              padding: EdgeInsets.all(40.0),
              child: Text('text inside container'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('press'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
