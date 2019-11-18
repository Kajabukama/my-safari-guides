import 'package:flutter/material.dart';

class DiscoveryScreen extends StatefulWidget {
  final String title;
  DiscoveryScreen({Key key, @required this.title}) : super(key: key);

  @override
  _DiscoveryScreenState createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  style: BorderStyle.solid,
                  color: Colors.black38,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
