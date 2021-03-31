import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:immune_monk/CommonWidgets/GradientButton.dart';
import 'package:immune_monk/CommonWidgets/TurnOnNotificationsTile.dart';
import 'package:immune_monk/HomePage.dart';

class TurnOnNotification extends StatefulWidget {
  @override
  _TurnOnNotificationState createState() => _TurnOnNotificationState();
}

class _TurnOnNotificationState extends State<TurnOnNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 15.0,
                top: 15.0,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                      Icons.arrow_back,
                    size: 27,
                  ),
                )
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 10.0,),
                  Image(
                    image: AssetImage("assets/getting_started_top_.png"),
                    height: 50.0,
                    width: 60.0,
                  ),
                  SizedBox(
                    height: 20.0 ,
                  ),
                  Flexible(
                    child: Image(
                      image: AssetImage("assets/turn_on_notification.PNG"),
                      height: 230.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Column(
                      children: [
                        TurnOnNotificationListTile(
                          text: "Weekly Health suggesations",
                        ),
                        Divider(
                          color: Colors.black38,
                        ),

                        TurnOnNotificationListTile(
                          text: "Daily health reminder and Report",
                        ),
                        Divider(
                          color: Colors.black38,
                        ),

                        TurnOnNotificationListTile(
                          text: "Tailor made services just for you",
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30.0,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Gradient_Button(
                        onPressed: (){},
                        text: "TURN ON"
                    ),
                  ),

                  SizedBox(height: 10.0,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text(
                      "Skip this",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff348017),
                        fontSize: 15.0,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}