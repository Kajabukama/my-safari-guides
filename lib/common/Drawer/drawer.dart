import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CommonDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 64.0, 32.0, 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                        image: DecorationImage(
                            image: AssetImage('assets/imgs/guide-05.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Yusuph Kajabukama",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "See profile",
                      style: TextStyle(color: Colors.black45),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 16.0, 40.0, 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Home",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Settings",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Bookmarks",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Interests",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Become a Member",
                        style: TextStyle(fontSize: 16.0, color: Colors.teal),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "National Parks",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Destinations",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Discoveries",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
