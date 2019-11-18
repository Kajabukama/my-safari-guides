import 'package:flutter/material.dart';

class TabPopular extends StatefulWidget {
  @override
  _TabPopularState createState() => new _TabPopularState();
}

class _TabPopularState extends State<TabPopular> {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
        physics: BouncingScrollPhysics(),
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 1.0,
        primary: false,
        maxCrossAxisExtent: 170.0,
        children: _buildGridTiles(40));
  }
}

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers =
      new List<Container>.generate(numberOfTiles, (index) {
    final name = index < 9
        ? 'assets/imgs/img0${index + 1}.jpg'
        : 'assets/imgs/img${index + 1}.jpg';
    return new Container(
      child: Image.asset(
        name,
        fit: BoxFit.cover,
      ),
    );
  });
  return containers;
}
