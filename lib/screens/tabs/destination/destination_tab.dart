import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TabDestination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        EvilIcons.getIconData('location'),
        color: Colors.grey.shade400,
        size: 60.0,
      ),
    );
  }
}
