import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnlinePharmacy extends StatefulWidget{
  @override
  _OnlinePharmacyState createState() => _OnlinePharmacyState();
}

class _OnlinePharmacyState extends State<OnlinePharmacy>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        title: Text("Monk's Pharmacy",style: TextStyle(color: Colors.green[800])),
        backgroundColor: Colors.greenAccent[200],
      ),
    );

  }
}