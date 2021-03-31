import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:immune_monk/Track%20Your%20Health/calculate_bpm.dart';
import 'package:immune_monk/Track%20Your%20Health/pedometer.dart';

class HealthDashboard extends StatefulWidget{
  @override
  _HealthDashboardState createState() => _HealthDashboardState();
}

class _HealthDashboardState extends State<HealthDashboard>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.grey[800],
      appBar: AppBar(
        title: Text("Dashboard",style: TextStyle(color: Colors.greenAccent),),
        backgroundColor: Colors.transparent,
      ),
      body:_buildBody(),
    );
  }
  Widget _buildBody(){
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
         _buildHeader(),
          const SizedBox(height:60.0),

          Row(
            children: <Widget>[
              Expanded(
                  child:Column(
                    children: <Widget>[
                      Container(
                        height: 260,
                        color: Colors.blue,
                        child: Column(
                          children: <Widget>[

                            ListTile(
                              title: Text("9,500",style: TextStyle(fontSize: 24.0),),
                              trailing: Icon(Icons.directions_walk),

                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DailyStepsPage()));
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 102.0),
                              child: Text("Steps"),
                            ),

                          ],
                        )
                      ),
                      const SizedBox(height: 10),

                      Container(
                          height: 170,
                          color: Colors.greenAccent,
                          child: Column(
                            children: <Widget>[

                              ListTile(
                                title: Text("70 bpm",style: TextStyle(fontSize: 24.0),),
                                trailing: Icon(CupertinoIcons.heart_solid),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AvgHeartRate()));
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 40.0),
                                child: Text("Avg. Heart Rate"),
                              ),

                            ],
                          )
                      ),
                    ],
                ),
              ),
              const SizedBox(width:9),
              Expanded(
                child:Column(
                  children: <Widget>[
                    Container(
                        height: 170,
                        color: Colors.orangeAccent,
                        child: Column(
                          children: <Widget>[

                            ListTile(
                              title: Text("2430",style: TextStyle(fontSize: 24.0),),
                              trailing: Icon(CupertinoIcons.burst),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 41.0),
                              child: Text("Calories Burned"),
                            ),

                          ],
                        )
                    ),
                    const SizedBox(width:10.0),
                    const SizedBox(height:10.0),
                    Container(
                        height: 260,
                        color: Colors.yellowAccent,
                        child: Column(
                          children: <Widget>[

                            ListTile(
                              title: Text("15 kms",style: TextStyle(fontSize: 24.0),),
                              trailing: Icon(CupertinoIcons.graph_circle_fill),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 75.0),
                              child: Text("Distance"),
                            ),

                          ],
                        )
                    ),
                  ],
                ),
              ),

            ],

          ),
    ],
    ),
    );
  }

  Widget _buildHeader(){
    return Row(

      children: <Widget>[
        Container(
          width: 160,
          height: 160,
          padding: EdgeInsets.all(8.0),
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.pinkAccent),
            value: 0.45,
            backgroundColor: Colors.grey[200],
          ),
        ),
        Expanded(
          child:Column(
            children: <Widget>[
              Text("Overall Daily Progress",style: TextStyle(color: Colors.white,fontSize: 17)),
              const SizedBox(height:20.0),
              Text("45% to go",style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }


}