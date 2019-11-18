import 'package:flutter/material.dart';
import 'package:my_safari_guide/models/tours_helper.dart';
import 'package:my_safari_guide/models/tours_model.dart';

class TabTour extends StatefulWidget {
  @override
  _TabTourState createState() => new _TabTourState();
}

class _TabTourState extends State<TabTour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: TourData.tourCount,
          itemBuilder: (context, position) {
            Tour tour = TourData.getTours(position);
            return Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0, 5.0),
              child: Card(
                elevation: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        tour.category,
                        style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Flexible(
                              child: Text(
                                tour.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                              flex: 2,
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                height: 80.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/imgs/" + tour.imageAsset),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(6.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                tour.guide,
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Text(
                                tour.duration + " . " + tour.cost,
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Icon(Icons.bookmark_border),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
