import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:immune_monk/CommonWidgets/BuildProfilePhoto.dart';
import 'package:immune_monk/CommonWidgets/BuildRatings.dart';
import 'package:immune_monk/CommonWidgets/GradientButton.dart';
import 'package:immune_monk/Consult%20A%20Doctor/DoctorDetails.dart';

class ConsultADoctor extends StatefulWidget {
  @override
  _ConsultADoctorState createState() => _ConsultADoctorState();
}

class _ConsultADoctorState extends State<ConsultADoctor> {

  double textFieldPadding = 15.0;

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(15.0))
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                            EvaIcons.bulbOutline,
                          size: 30.0,
                        ),
                        BuildProfilePhoto()
                      ],
                    ),
                    Text(
                      "Book an Appointment",
                      style: TextStyle(
                        color: Color(0xff151B54),
                        fontSize: 21.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0
                      ),
                    ),
                    SizedBox(height: 15.0,),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xff8BB381).withOpacity(0.3),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: textFieldPadding),
                    child: TextField(
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                        hintText: "Doctor, Specialist ...",
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(
                            EvaIcons.search,
                          color: Color(0xff151B54),
                        ),
                        enabledBorder: outlineInputBorder,
                          focusedBorder: outlineInputBorder
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: textFieldPadding),
                    child: TextField(
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                          hintText: "Select Area",
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(
                            EvaIcons.navigationOutline,
                            color: Color(0xff151B54),
                          ),
                          enabledBorder: outlineInputBorder,
                          focusedBorder: outlineInputBorder
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: textFieldPadding),
                    child: TextField(
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                          hintText: "Select Date",
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(
                            EvaIcons.calendarOutline,
                            color: Color(0xff151B54),
                          ),
                          enabledBorder: outlineInputBorder,
                          focusedBorder: outlineInputBorder
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Gradient_Button(
                        onPressed: (){},
                        text: "Search"
                    ),
                  ),

                  SizedBox(height: 20.0,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "All Specialists",
                              style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.5,
                                fontSize: 17.0
                              ),
                            ),
                            Icon(
                              EvaIcons.starOutline,
                              size: 24.0,
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0,),

                        ListView.builder(
                          itemCount: 5,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index){
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorDetails()));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.symmetric(vertical: 10.0),
                                      child: Row(
                                        children: [
                                            Container(
                                              height: 70.0,
                                              width: 70.0,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff99C68E),
                                                borderRadius: BorderRadius.all(Radius.circular(10.0))
                                              ),
                                            ),
                                          SizedBox(width: 10.0,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Dr. Rushi Donga",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 0.5,
                                                  fontSize: 15.0
                                                ),
                                              ),
                                              SizedBox(height: 2.0,),
                                              Text(
                                                "Cardiologist",
                                                style: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 0.5,
                                                    fontSize: 13.0
                                                ),
                                              ),
                                              SizedBox(height: 2.0,),
                                              Text(
                                                "Luxemborg Ville - 2 Km",
                                                style: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 0.5,
                                                    fontSize: 13.0
                                                ),
                                              ),
                                              SizedBox(height: 5.0,),
                                              BuildRatings(
                                                star: 4.0,
                                                data: "(500)",
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5.0,),
                                  Divider(
                                    color: Colors.grey[400],
                                  )
                                ],
                              );
                            }
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
