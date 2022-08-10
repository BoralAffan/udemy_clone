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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Featured',
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
            SizedBox(
              height: 220,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage('assets/flag1.jpg'),
                    fit: BoxFit.fill,
                  )),
            ),

            
          ],
        ),
      ),
    );
  }
}
