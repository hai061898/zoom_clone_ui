import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoom Message',
      theme: ThemeData(  
        brightness: Brightness.dark
      ),
      home: HomeScreen(),
    );
  }
}