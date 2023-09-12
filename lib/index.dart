// Electric bill calculator app 
//  this  app build by divyanshu tailor : github id : Divyyanshu
//  CHECK MY DEPENCENCIES IN pubspec.yaml 
//   and this is my first flutter app 


import 'package:calculator/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: billScreen(),
    );
  }
}
