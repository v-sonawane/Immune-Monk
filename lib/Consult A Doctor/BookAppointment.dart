import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:immune_monk/CommonWidgets/BuildDateTime.dart';
import 'package:immune_monk/CommonWidgets/BuildProfilePhoto.dart';
import 'package:immune_monk/CommonWidgets/GradientButton.dart';
import 'package:immune_monk/Consult%20A%20Doctor/AppointmentConfirmed.dart';

class BookAppointment extends StatefulWidget {
  @override
  _BookAppointmentState createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {

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
                        Text(
                          "Dr. Rushi Donga",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0
                          ),
                        ),
                        SizedBox(width: 7.0,),
                        Text(
                          "Confirmation",
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.3,
                              fontSize: 16.0
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

                    Divider(color: Colors.grey[500],),

                    SizedBox(height: 10.0,),

                    TextField(
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                          hintText: "Message",
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: outlineInputBorder,
                          focusedBorder: outlineInputBorder
                      ),
                    ),

                    SizedBox(height: 10.0,),

                    TextField(
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                          hintText: "Reason to Visit",
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: outlineInputBorder,
                          focusedBorder: outlineInputBorder
                      ),
                    ),

                    SizedBox(height: 10.0,),

                    Center(
                      child: Gradient_Button(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentConfirmed()));
                          },
                          text: "Pay Now"
                      ),
                    ),

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
