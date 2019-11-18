import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_safari_guide/screens/tabs/photo/photo_tab.dart';

class GuideInfo extends StatefulWidget {
  @override
  _GuideInfoState createState() => new _GuideInfoState();
}

class _GuideInfoState extends State<GuideInfo>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            title: Text("Wesley Kileo"),
            pinned: true,
            expandedHeight: 280.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Image(
                image: AssetImage('assets/imgs/guide-05.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Color(0xFFe17055),
            bottom: new TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 2.0,
              labelColor: Colors.white,
              tabs: [
                new Tab(
                  icon: Icon(
                    Feather.getIconData('user'),
                    size: 18.0,
                  ),
                ),
                new Tab(
                  icon: Icon(
                    Feather.getIconData('camera'),
                    size: 18.0,
                  ),
                ),
                new Tab(
                  icon: Icon(
                    Feather.getIconData('globe'),
                    size: 18.0,
                  ),
                ),
                new Tab(
                  icon: Icon(
                    Feather.getIconData('message-circle'),
                    size: 18.0,
                  ),
                ),
              ],
              controller: controller,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: TabBarView(
              controller: controller,
              children: <Widget>[
                Container(),
                TabPhoto(),
                Center(
                  child: Text('Tours'),
                ),
                Center(
                  child: Text('Reviews'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
