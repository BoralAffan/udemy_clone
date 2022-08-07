import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:udemy_clone/firebase_options.dart';
import 'package:udemy_clone/screens/loginScreen.dart';
import 'package:udemy_clone/screens/splash.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  StreamBuilder(
        builder: (context,usersnapshot){
          if(usersnapshot.hasData){
            return SplashScreen();
          }
          else return LoginScreen();
        }),
      );
    
  }
}
