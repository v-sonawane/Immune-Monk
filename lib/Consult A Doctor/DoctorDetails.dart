import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:immune_monk/CommonWidgets/BuildAppointmentTime.dart';
import 'package:immune_monk/CommonWidgets/BuildProfilePhoto.dart';
import 'package:immune_monk/CommonWidgets/BuildRatings.dart';
import 'package:immune_monk/CommonWidgets/GradientButton.dart';
import 'package:immune_monk/Consult%20A%20Doctor/BookAppointment.dart';

class DoctorDetails extends StatefulWidget {
  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {

  TextStyle description = TextStyle(
    color: Colors.grey,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );

  TextStyle details = TextStyle(
    color: Colors.black,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff8BB381).withOpacity(0.3),
        child: ListView(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
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
                        height: 80.0,
                        width:  80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Color(0xff99C68E),
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
                          SizedBox(height: 5.0,),
                          Text(
                            "Cardiologist",
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5,
                                fontSize: 13.0
                            ),
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            "Navsari, Gujarat 396445",
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.5,
                                fontSize: 13.0
                            ),
                          ),
                          SizedBox(height: 5.0,),
                          BuildRatings(star: 3.0, data: "(250)")
                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 15.0,),

                  Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                        itemBuilder: (context, index){
                          return Card(
                            margin: EdgeInsets.only(right: 20.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                            ),
                            elevation: 0.5,
                            child: Stack(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width - 90,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Thu, 09 April",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.5,
                                              fontSize: 17.0
                                          ),
                                        ),
                                        SizedBox(height: 15.0,),
                                        Text(
                                          "3 Slot Available",
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.5,
                                              fontSize: 15.0
                                          ),
                                        ),
                                        SizedBox(height: 10.0,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            BuildAppointmentTime(
                                              time: "08:00",
                                            ),

                                            BuildAppointmentTime(
                                              time: "12:00",
                                            ),

                                            BuildAppointmentTime(
                                              time: "15:00",
                                            )

                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                                Positioned(
                                  right: 20.0,
                                  top: 23.0,
                                  child: GestureDetector(
                                    onTap:(){},
                                    child: Container(
                                      height: 40.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                                      ),
                                      child: Center(
                                        child: Text(
                                          "SEE ALL",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17.0
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                    ),
                  ),

                  SizedBox(height: 20.0,),

                  Gradient_Button(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookAppointment()));
                        },
                      text: "Book an Appointment"
                  ),

                  SizedBox(height: 10.0,),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Doctor Details",
                      style: TextStyle(
                        color: Color(0xff2E2EFE),
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.4
                      ),
                    ),
                  ),

                  SizedBox(height: 15.0,),

                  Divider(
                    color: Colors.grey[500],
                  ),

                  SizedBox(height: 10.0,),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Languages",
                      style: details
                    ),
                  ),

                  SizedBox(height: 7.0,),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "✒ English ✒ French ✒ German",
                      style: description
                    ),
                  ),

                  SizedBox(height: 10.0,),

                  Divider(color: Colors.grey,),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                        "Education",
                        style: details
                    ),
                  ),

                  SizedBox(height: 7.0,),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                        "☢ UCL - Cliniques Saint - Luc (1987-1999)",
                        style: description
                    ),
                  ),
                  SizedBox(height: 3.0,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                        "☢ Cardiologue. Recherche au Laba=oratorie.",
                        style: description
                    ),
                  ),
                  SizedBox(height: 3.0,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                        "☢ Cardiologue. Recherche au Laba=oratorie.",
                        style: description
                    ),
                  ),

                  SizedBox(height: 10.0,),

                  Divider(color: Colors.grey,),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                        "Publications",
                        style: details
                    ),
                  ),
                  SizedBox(height: 5.0,),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                        "☢ RushiDonga. Charotar University of Science and Technology, IT | Android Developer | Web Developer | Flutter Developer both on Server side as well as Client Side. Follow.",
                        style: description
                    ),
                  ),

                  SizedBox(height: 10.0,),

                  Divider(color: Colors.grey,),

                  SizedBox(height: 7.00,),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                        "Description",
                        style: details
                    ),
                  ),

                  SizedBox(height: 10.0,),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                        "☢ Rushi Donga | Developer Location: Navsari Telephone: 8160452829 Email: rushi.donga9537@gmail.com Professional Profile I have been working with Android Studio since 2019, the period during which I developed skills on both Server side as well as the Client Side. Since 2020,.",
                        style: description
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}