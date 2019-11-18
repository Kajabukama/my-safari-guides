import 'package:flutter/material.dart';
import 'package:my_safari_guide/screens/cultural/cultural.dart';
import 'package:my_safari_guide/screens/guide/guides.dart';

class TabHome extends StatefulWidget {
  @override
  _TabHomeState createState() => new _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Text(
                'Tour Guides Experiences',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 200.0,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  listItem(
                      'assets/imgs/guide-02.jpg',
                      'Find a Guide',
                      () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GuideScreen()))
                          }),
                  listItem('assets/imgs/img22.jpg', 'Find a Tour',
                      () => {print('Find a Tour')}),
                  listItem('assets/imgs/img41.jpg', 'Find a Car',
                      () => {print('find a car')}),
                  listItem('assets/imgs/img07.jpg', 'Destinations',
                      () => {print('Destinations')}),
                  listItem('assets/imgs/img02.jpg', 'Discoveries',
                      () => {print('Discoveries')}),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              height: 360,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Introducing',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 50.0),
                    child: Text(
                      'Cultural Tourism Experience',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      color: Colors.white.withOpacity(0.8),
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 40.0),
                      child: Text('Read More'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new CulturalScreen()));
                      },
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.darken),
                      image: AssetImage('assets/imgs/img18.jpg'),
                      fit: BoxFit.cover)),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Explore Tour Guides Adventures',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF2d3436)),
                    ),
                  ),
                  Container(
                    child: Text('Multiday trips led by local experts'),
                  ),
                  Container(
                    child: Text('- activities, meals and stays included'),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  listItem(String url, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 160.0,
          margin: EdgeInsets.only(right: 3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              image: DecorationImage(
                  image: AssetImage(url),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken)))),
    );
  }
}
