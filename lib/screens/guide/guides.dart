import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_safari_guide/common/Drawer/drawer.dart';
import 'package:my_safari_guide/screens/tabs/guide/guide_tab.dart';

class GuideScreen extends StatefulWidget {
  @override
  _GuideScreenState createState() => _GuideScreenState();
}

class _GuideScreenState extends State<GuideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CommonDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFFe17055),
        title: Text('Explore our Guides'),
        centerTitle: true,
        elevation: 0.0,
        titleSpacing: 2.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(EvilIcons.getIconData('search')),
          ),
        ],
      ),
      body: TabGuide(),
    );
  }
}
