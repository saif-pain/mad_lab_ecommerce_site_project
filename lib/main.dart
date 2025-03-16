import 'package:flutter/material.dart';
import 'package:mad_lab_ecommerce_site_project/screens/home/pages/home.dart';

void main() async {
  runApp(const MyEcom());
}

class MyEcom extends StatelessWidget {
  const MyEcom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Freebies E-Commerce",
      home: Home(),
    );
  }
}
