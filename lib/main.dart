import 'package:flutter/material.dart';
//import 'package:my_project/screens/home.dart';
import 'package:my_project/screens/item.dart';
//import 'package:my_project/screens/addform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
    title: "My Title",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: const Item(),
    ),
  );
  }
}