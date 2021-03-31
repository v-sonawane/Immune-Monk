import 'package:flutter/material.dart';

class BuildProfilePhoto extends StatelessWidget {
  const BuildProfilePhoto({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(50.0))
          ),
          child: Center(
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(color: Color(0xff54C571).withOpacity(0.6),
                  borderRadius: BorderRadius.all(Radius.circular(50.0))
              ),
            ),
          ),
        ),
        Positioned(
          top: 41.0,
          right: 5.0,
          child: Container(
            height: 18.0,
            width: 18.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50.0))
            ),
            child: Center(
              child: Container(
                height: 13.0,
                width: 13.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(50.0))
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}