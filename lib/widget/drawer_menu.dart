import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  List<DrawerModel> _drawerModel = <DrawerModel>[
    DrawerModel(title: 'Shop', url: 'shop'),
    DrawerModel(title: 'Profile', url: 'profile'),
    DrawerModel(title: 'Login', url: 'login'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _drawerModel
        .map((f) => InkWell(
          onTap: () => print(f.url),
        ))
        .toList(),
    );
  }
}

class DrawerModel {
  final String title;
  final String url;

  DrawerModel({this.title, this.url});
}
