import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemy_clone/screens/home.dart';
import 'package:udemy_clone/screens/splash.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void googleLogin() async {
    final googlesignin = GoogleSignIn();
    final signinAccount = await googlesignin.signIn();
    final accountAuthentication = await signinAccount!.authentication;
    final credential = GoogleAuthProvider.credential(
        accessToken: accountAuthentication.accessToken,
        idToken: accountAuthentication.idToken);

    await FirebaseAuth.instance.signInWithCredential(credential);
    
    

    Navigator.pushReplacement(
        context,
        PageTransition(
            child: SplashScreen(), type: PageTransitionType.bottomToTop));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: Column(
          children: [
            Container(
                height: 600,
                child: Image(
                  image: AssetImage('assets/login.jpg'),
                  fit: BoxFit.contain,
                )),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: ElevatedButton(
                    onPressed: () {
                      googleLogin();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: 40,
                            child:
                                Image(image: AssetImage('assets/google1.png'))),
                        Text('Login',
                            style: GoogleFonts.lato(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
              ),
            ),
          ],
        )));
  }
}
