import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FilledButton( //TextButton, FilledButton, OutlinedButton, ElevatedButton
          style: FilledButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.black
          ),
            onPressed: (){
              //print("Button Click");
            }, 
            child: Text("Click", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 30),
      
          // Image.network(
          //   "https://student.ict.mahidol.ac.th/Content/site-logo-ict.png",
          //   width: 150,
          //   height: 150,
          // ),
          // const SizedBox(height: 30), //กล่องเปล่าคั่นรูปภาพ
          // Image.asset(
          //   "assets/images/saksit.jpg",
          //   width: 150,
          //   height: 150,
          // ),
          
        // Container(
        //   color: Colors.orange,
        //   //margin: const EdgeInsets.all(20),
        //   //margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        //   padding: const EdgeInsets.all(10),
        //   //width: 300,
        //   //height: 300,
        //   child: Text(
        //     "Saksit",
        //     style: TextStyle(
        //       fontSize: 30,
        //       fontFamily: "geneva",
        //     ),
        //   ),
        // ),
        // Container(
        //   color: Colors.orange,
        //   //margin: const EdgeInsets.all(20),
        //   //margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        //   padding: const EdgeInsets.all(10),
        //   //width: 300,
        //   //height: 300,
        //   child: Text(
        //     "Boom",
        //     style: TextStyle(
        //       fontSize: 30,
        //       fontFamily: "geneva",
        //     ),
        //   ),
        // ),
        // Container(
        //   color: Colors.orange,
        //   //margin: const EdgeInsets.all(20),
        //   //margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        //   padding: const EdgeInsets.all(10),
        //   //width: 300,
        //   //height: 300,
        //   child: Text(
        //     "Jittasopee",
        //     style: TextStyle(
        //       fontSize: 30,
        //       fontFamily: "geneva",
        //     ),
        //   ),
        // ),
      ],
      ),
    );
  }
}