import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TabDiscovery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Octicons.getIconData('globe'),
        color: Colors.grey.shade400,
        size: 60.0,
      ),
    );
  }
}
