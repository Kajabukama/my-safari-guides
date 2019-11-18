import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_safari_guide/common/Drawer/drawer.dart';

class CulturalScreen extends StatefulWidget {
  @override
  _CulturalScreenState createState() => new _CulturalScreenState();
}

class _CulturalScreenState extends State<CulturalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 0.0,
              backgroundColor: Color(0xffff9f1a),
              expandedHeight: 260.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Cultural Tourism",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                background: Image(
                  image: AssetImage('assets/imgs/img20.jpg'),
                  fit: BoxFit.cover,
                  colorBlendMode: BlendMode.darken,
                ),
              ),
            )
          ];
        },
        body: Center(
          child: Text('Cultural Tourism'),
        ),
      ),
    );
  }
}
