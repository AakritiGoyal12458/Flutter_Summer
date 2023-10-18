import 'package:flutter/material.dart';

import 'ui/myappbar.dart';

void main() {
  runApp(MyProfileApp());
}


//stateless   
class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: MyAppBar(),
    );
  }
}
