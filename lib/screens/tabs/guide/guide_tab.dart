import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_safari_guide/models/guides_model.dart';
import 'package:my_safari_guide/models/tours_helper.dart';
import 'package:my_safari_guide/screens/guide/guide_info.dart';

class TabGuide extends StatefulWidget {
  @override
  _TabGuideState createState() => new _TabGuideState();
}

class _TabGuideState extends State<TabGuide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: GuideData.guideCount,
          itemBuilder: (context, position) {
            Guide guide = GuideData.getGuides(position);
            return _guideItem(
                guide.imageAsset,
                guide.name,
                guide.company,
                guide.bio,
                guide.tour,
                guide.photo,
                guide.like,
                guide.started,
                guide.category);
          },
        ));
  }

  void _showMore(
      String guideName, String guideImage, String guideCompany, int started) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(24.0),
                topRight: const Radius.circular(24.0))),
        builder: (builder) {
          return Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10.0),
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white.withOpacity(0.2), width: 8.0),
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/imgs/' + guideImage))),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          guideName,
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        child: Text(guideCompany,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400)),
                      ),
                      Container(
                        child: FlatButton(
                          shape: StadiumBorder(),
                          color: Colors.amber,
                          padding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 24.0),
                          child: Text(
                            'View Guide Profile',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GuideInfo()));
                          },
                        ),
                      )
                    ],
                  )),
              Container(
                child: Text('Started Tour Guiding Since' + started.toString()),
              )
            ],
          );
        });
  }

  _guideItem(String url, String name, String company, String bio, int tour,
      int photo, int like, int started, String category) {
    return Container(
      margin: EdgeInsets.only(bottom: 14.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(right: 10.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/imgs/' + url),
                            radius: 15.0,
                          )),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              name,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12.0),
                            ),
                            Text(company,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade700))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(Feather.getIconData('more-horizontal')),
                    alignment: Alignment.topRight,
                    onPressed: () {
                      setState(() {
                        _showMore(name, url, company, started);
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 280,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 18.0, horizontal: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Tours',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0),
                        ),
                        Text(
                          tour.toString(),
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.w300,
                              fontSize: 22.0),
                        )
                      ],
                    )),
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 18.0, horizontal: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Photos',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0),
                        ),
                        Text(
                          photo.toString(),
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.w300,
                              fontSize: 22.0),
                        )
                      ],
                    )),
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 18.0, horizontal: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Likes',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0),
                        ),
                        Text(
                          like.toString(),
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.w300,
                              fontSize: 22.0),
                        )
                      ],
                    ))
              ],
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/imgs/' + url),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.darken))),
          ),
          Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            margin: EdgeInsets.only(bottom: 22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          EvilIcons.getIconData('comment'),
                          color: Colors.grey.shade600,
                          size: 32.0,
                        ),
                      ),
                      Container(
                        child: Icon(
                          EvilIcons.getIconData('image'),
                          size: 32.0,
                          color: Colors.grey.shade600,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    bio,
                    maxLines: 4,
                    style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade800),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
