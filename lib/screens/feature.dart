import 'package:flutter/material.dart';


class Feature extends StatefulWidget {
  const Feature({Key? key}) : super(key: key);

  @override
  State<Feature> createState() => _FeatureState();
}

class _FeatureState extends State<Feature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('featured'),
      ),
    );
  }
}