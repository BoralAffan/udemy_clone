import 'package:flutter/material.dart';

 class MyLearnings extends StatefulWidget {
  const MyLearnings({Key? key}) : super(key: key);

  @override
  State<MyLearnings> createState() => _MyLearningsState();
}

class _MyLearningsState extends State<MyLearnings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('my learnings'),
      ),
    );
  }
}