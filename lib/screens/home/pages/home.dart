import 'package:flutter/material.dart';
import 'package:mad_lab_ecommerce_site_project/common/widgets/app_bar.dart';
import 'package:mad_lab_ecommerce_site_project/screens/home/pages/home_screen.dart';
import 'package:mad_lab_ecommerce_site_project/screens/home/widgets/bottom_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _homeScreens = [
    HomeScreen(),
    Container(
      height: double.infinity,
      color: Colors.black,
    ),
    Container(
      height: double.infinity,
      color: Colors.blue,
    ),
    Container(
      height: double.infinity,
      color: Colors.green,
    ),
  ];

  void _onTapMethod(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(),
      body: _homeScreens[_currentIndex],
      bottomNavigationBar: FbottomBar(
        currentIndex: 0,
        ontapMethod: _onTapMethod,
      ),
    );
  }
}
