

import 'package:flutter/material.dart';
import 'package:flutter_fifth_class/screens/count.dart';
import 'package:flutter_fifth_class/screens/dashboard.dart';
import 'package:flutter_fifth_class/screens/login_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Loginpage(),
    );
  }
}