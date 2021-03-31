import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:immune_monk/CommonWidgets/BuildDateTime.dart';
import 'package:immune_monk/CommonWidgets/BuildProfilePhoto.dart';

class AppointmentConfirmed extends StatefulWidget {
  @override
  _AppointmentConfirmedState createState() => _AppointmentConfirmedState();
}

class _AppointmentConfirmedState extends State<AppointmentConfirmed> {

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(15.0))
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xff8BB381).withOpacity(0.3),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          EvaIcons.arrowIosBack,
                          color: Colors.black,
                          size: 30.0,
                        ),

                        BuildProfilePhoto()
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          child: Stack(
                            children: [
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(50.0))
                                ),
                              ),
                              Center(
                                child: Container(
                                  height: 45.0,
                                  width: 45.0,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(50.0))
                                  ),
                                  child: Icon(
                                    Icons.all_inclusive_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 10.0,),

                        Text(
                          "Appointment Confirmed",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            letterSpacing: 0.3
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10.0,),

                    BuildDateTime(
                      date: "Thu, 09 Apr",
                      time: "08:00",
                    ),

                    SizedBox(height: 10.0,),

                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Row(
                        children: [
                          Text(
                            "Dr. Rushi Donga",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0
                            ),
                          ),
                          SizedBox(width: 7.0,),
                          Text(
                            "Dentist",
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.3,
                                fontSize: 14.0
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10.0,),

                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.black,
                          size: 30.0,
                        ),

                        SizedBox(width: 10.0,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sambhavnath Society,",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0
                              ),
                            ),
                            Text(
                              "Navsari, 396445",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14.0
                              ),
                            )
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 10.0,),

                    Divider(color: Colors.grey[600],),

                    Center(
                      child: Image(
                          image: AssetImage("assets/appointment_booked.png"),
                        height: 250.0,
                        width: 250.0,
                      ),
                    ),

                    SizedBox(height: 50.0,),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
