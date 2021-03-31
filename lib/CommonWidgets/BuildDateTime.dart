import 'package:flutter/material.dart';

class BuildDateTime extends StatelessWidget {

  BuildDateTime({@required this.date, @required this.time});
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 200.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "$date",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0
            ),
          ),
          Text(
            "$time",
            style: TextStyle(
                color: Colors.green,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}