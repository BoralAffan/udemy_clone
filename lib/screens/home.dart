import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:udemy_clone/screens/accdetails.dart';
import 'package:udemy_clone/screens/cart.dart';
import 'package:udemy_clone/screens/feature.dart';
import 'package:udemy_clone/screens/learning.dart';
import 'package:udemy_clone/screens/search.dart';
import 'package:udemy_clone/screens/wishlist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  PageController pageController = new PageController();
  void ontap(int page) {
    setState(() {
      _currentIndex = page;
    });
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            Feature(),
            search(),
            MyLearnings(),
            Wishlist(),
            AccDetails()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 50,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.black,
          onTap: ontap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Featured'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle), label: 'My learning'),
            BottomNavigationBarItem(
                icon: Icon(Icons.heart_broken), label: 'wishlist'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ));
  }
}
