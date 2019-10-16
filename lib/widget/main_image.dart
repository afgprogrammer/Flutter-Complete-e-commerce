import 'package:flutter/material.dart';

import '../Animation/FadeAnimation.dart';

class MainImage extends StatefulWidget {
  @override
  _MainImageState createState() => _MainImageState();
}

class _MainImageState extends State<MainImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.2),
          ])),
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                          1.5,
                          Text(
                            "Our New Products",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      FadeAnimation(
                          1.7,
                          Row(
                            children: <Widget>[
                              Text(
                                "VIEW MORE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
