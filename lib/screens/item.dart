import 'package:flutter/material.dart';
import 'package:my_project/models/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/screens/addform.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  // int quantity = 10;

  // void addQuantity(){ //Add
  //   setState(() {
  //     quantity += 1;
  //   });
  // }

  // void subtractQuantity(){ //Subtract
  //   setState(() {
  //     quantity = quantity <= 0 ? 0 : quantity - 1;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            //Center
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text("$quantity", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
            //     const SizedBox(height: 30),
            //     OutlinedButton(
            //       onPressed: addQuantity,
            //       child: const Text("+", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            //       ),
            //       const SizedBox(height: 30),
            //     OutlinedButton(
            //       onPressed: subtractQuantity,
            //       child: const Text("-", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            //       ),
            //   ],
            // ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: data[index].job.color,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                padding: const EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[index].name,
                          style: GoogleFonts.kanit(
                            textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "อายุ ${data[index].age} ปี , อาชีพ ${data[index].job.title}",
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                        ),
                        Image.network(
                          "https://student.ict.mahidol.ac.th/Content/site-logo-ict.png",
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: IconButton(
            icon: const Icon(Icons.add, size: 40,color: Colors.blue),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx) => const AddForm()));
            },
            ), 
          ),
      ],
    );
  }
}
