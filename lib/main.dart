import 'package:flutter/material.dart';

var appName = "Franz G";
var customImage = "https://picsum.photos/400";
void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          appName.toUpperCase(),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/persona.jpg'),
                  radius: 60.0,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Full Name'.toUpperCase(),
                style: TextStyle(
                    color: Colors.white, fontSize: 14.0, letterSpacing: 2.0),
              ),
              SizedBox(height: 10),
              Text(
                'Francisco Gamarra',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Nunito",
                    letterSpacing: 2.0),
              ),
            ],
          )),
    );
  }
}

class Hola extends StatefulWidget {
  @override
  _HolaState createState() => _HolaState();
}

class _HolaState extends State<Hola> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
