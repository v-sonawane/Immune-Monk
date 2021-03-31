import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {

  HomePageCard({@required this.text, @required this.image, @required this.onPressed});
  final String text;
  final Image image;
  final dynamic onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 150.0,
        width: 180.0,
        child: Card(
          elevation: 0.5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: Column(
              children: [
                Text(
                  "$text",
                  style: TextStyle(
                      color: Color(0xff151B54),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      fontSize: 17
                  ),
                ),
                image
              ],
            ),
          ),
        ),
      ),
    );
  }
}