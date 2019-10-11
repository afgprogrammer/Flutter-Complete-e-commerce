import 'package:flutter/material.dart';

class CreateProfile extends StatefulWidget {
  @override
  _CreateProfileState createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create profile'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text('Back'),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
    );
  }
}
