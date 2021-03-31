import 'package:flutter/material.dart';

class BuildAppointmentTime extends StatelessWidget {

  BuildAppointmentTime({@required this.time});
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      elevation: 0.7,
      child: Container(
        height: 40.0,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "$time",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  fontSize: 15.0
              ),
            ),
          ),
        ),
      ),
    );
  }
}
