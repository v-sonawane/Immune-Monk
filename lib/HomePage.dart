import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:immune_monk/Consult%20A%20Doctor/consut_a_doctor.dart';
import 'package:immune_monk/Pharmacy/search_pharmacy_near_you.dart';
import 'package:immune_monk/Talk%20To%20Monk/chatbot.dart';
import 'package:immune_monk/Track%20Your%20Health/choose_health_activity.dart';

import 'CommonWidgets/BuildProfilePhoto.dart';
import 'CommonWidgets/HomePageCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xff8BB381).withOpacity(0.3),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.0), bottomRight: Radius.circular(40.0))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                          EvaIcons.bulbOutline,
                        size: 25.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50.0,),
                            Text(
                              "Good Morning",
                              style: TextStyle(
                                color: Color(0xff008080),
                                fontSize: 27.00,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Text(
                              "Rushi",
                              style: TextStyle(
                                  color: Color(0xff008080),
                                  fontSize: 24.00,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.0
                              ),
                            ),
                            SizedBox(height: 20.0,),
                            Text(
                              "Your target for today is to keep positive mindset and smile to everyone you meet",
                              style: TextStyle(
                                color: Color(0xff307D7E).withOpacity(0.7),
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w600
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              
              Positioned(
                top: 35.0,
                right: 40.0,
                child: BuildProfilePhoto(),
              )
            ],
          ),

          SizedBox(height: 20.0,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HomePageCard(
                image: Image(
                  image: AssetImage("assets/consult_a_doctor.png"),
                  height: 82.0,
                ),
                text: "Consult a Doctor",
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ConsultADoctor()));
                },
              ),

              HomePageCard(
                image: Image(
                  image: AssetImage("assets/pharmacy.png"),
                  height: 82.0,
                ),
                text: "Pharmacy",
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OnlinePharmacy()));

                },
              ),
            ],
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HomePageCard(
                image: Image(
                  image: AssetImage("assets/immune_monk.png"),
                  height: 82.0,
                ),
                text: "Talk to Monk",
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>ImmuneMonkTalks()));

                },
              ),

              HomePageCard(
                image: Image(
                  image: AssetImage("assets/insurance.png"),
                  height: 82.0,
                ),
                text: "Insurance",
                onPressed: (){},
              ),
            ],
          ),

          Center(
            child:HomePageCard(
              image: Image(
                image: AssetImage("assets/health_track.png"),
                height: 82.0,
              ),
              text: "Track Health",
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HealthDashboard()));
              },
            ),
          )
        ],
      ),
    );
  }
}
