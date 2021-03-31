import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class TurnOnNotificationListTile extends StatelessWidget {

  TurnOnNotificationListTile({@required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xff1BBC9B),
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Icon(
                EvaIcons.arrowCircleRight,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 15.0,),
            Text(
              "${text}",
              style: TextStyle(
                  color: Color(0xff348017),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  fontSize: 14.0
              ),
            )
          ],
        )
    );
  }
}
