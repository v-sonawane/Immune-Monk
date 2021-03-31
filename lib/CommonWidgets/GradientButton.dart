import 'package:flutter/material.dart';

class Gradient_Button extends StatelessWidget {

  Gradient_Button({@required this.onPressed, @required this.text});
  final dynamic onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
              colors: [
                Color(0xff89C35C),
                Color(0xff1BBC9B),
                Color(0xff1BBC9B),
                Color(0xff1BBC9B),
                Color(0xff1BBC9B),
                Color(0xff1BBC9B),
                Color(0xff1BBC9B),
                Color(0xff1BBC9B),
              ],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight
          )
      ),
      child: FlatButton(
          minWidth: MediaQuery.of(context).size.width - 80,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "$text",
              style: TextStyle(
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                fontSize: 17.0
              ),
            ),
          )
      ),
    );
  }
}
