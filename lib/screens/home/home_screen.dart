import 'package:flutter/material.dart';
import 'package:my_safari_guide/common/Drawer/drawer.dart';
import 'package:my_safari_guide/screens/tabs/guide/guide_tab.dart';
import 'package:my_safari_guide/screens/tabs/home/home_tab.dart';
import 'package:my_safari_guide/screens/tabs/popular/popular_tab.dart';
import 'package:my_safari_guide/screens/tabs/tours/tours_tab.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

Color primaryColor = Color(0xFFe17055);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: CommonDrawer(),
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: Text('Tour Guides'),
            centerTitle: true,
            elevation: 0.0,
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 3.0,
              onTap: (index) {},
              tabs: <Widget>[
                Tab(
                  child: Text('Home'),
                ),
                Tab(
                  child: Text('Find Guides'),
                ),
                Tab(
                  child: Text('Find Tours'),
                ),
                Tab(
                  child: Text('Popular'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[TabHome(), TabGuide(), TabTour(), TabPopular()],
          ),
        ));
  }
}
