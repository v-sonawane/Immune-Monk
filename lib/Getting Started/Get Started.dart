import 'package:flutter/material.dart';
import 'package:immune_monk/CommonWidgets/GradientButton.dart';
import 'package:immune_monk/Getting%20Started/turn_on_notification.dart';
import 'package:flutter/animation.dart';
class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> with TickerProviderStateMixin{


  AnimationController _controller;
  Animation<double> _animation;

  initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this, value: 0.1);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);

    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10.0,),
                Image(
                    image: AssetImage("assets/getting_started_top_.png"),
                      height: 50.0,
                    width: 60.0,
                  ),
                SizedBox(height: 20.0,),
                Text(
                  "This is Immune Monk,\nWelcome!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff374087),
                      fontSize: 19.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  "I am a solution to all your worries",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff1BBC9B),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
        ScaleTransition(
          scale: _animation,
            child: Image(
                image: AssetImage("assets/immune_monk.png"),
              height: 280.0,
            ),
        ),

            Column(
              children: [
                Gradient_Button(
                  text: "GET STARTED",
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TurnOnNotification()));
                  },
                ),
                SizedBox(height: 7.0,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account?",
                      style: TextStyle(
                        color: Color(0xff6CBB3C),
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    Text(
                      " Sign In",
                      style: TextStyle(
                          color: Color(0xff461B7E),
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0,)
              ],
            )
          ],
        ),
      ),
    );
  }
}