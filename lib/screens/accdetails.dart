import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AccDetails extends StatelessWidget {
  const AccDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Account',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/elon.jpg'),
                    radius: 60,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Affan Boral',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Become an Instructor',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 19),
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
