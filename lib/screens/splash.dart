import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemy_clone/screens/home.dart';
import 'package:udemy_clone/screens/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    //Timer(Duration(seconds: 3),()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen())));
    Timer(Duration(seconds: 3),()=> Navigator.pushReplacement(context, PageTransition(child: HomeScreen(), type: PageTransitionType.leftToRight)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              height: 690,
              width: MediaQuery.of(context).size.width,
              child: Image(image: AssetImage('assets/udemy.png')),
            ),
            CircularProgressIndicator(
              color: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
}
