import 'package:flutter/material.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/person.dart';

class AddForm extends StatefulWidget{
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {

  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 20;
  Job _job = Job.student;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
    title: "My Title",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                maxLength: 20,
                decoration: InputDecoration(
                  label: Text("Name",style: TextStyle(fontSize: 20),)
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please fill your name";
                  }
                  return null;
                },
                onSaved: (value){
                  _name = value!;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("Age",style: TextStyle(fontSize: 20),)
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please fill your age";
                  }
                  return null;
                },
                onSaved: (value){
                  _age = int.parse(value.toString());
                },
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField(
                initialValue: _job,
                decoration: InputDecoration(
                  label: Text("Job",style: TextStyle(fontSize: 20),)
                ),
                items: Job.values.map((key){
                  return DropdownMenuItem(
                    value: key,
                    child: Text(key.title),
                    );
                }).toList(), 
                onChanged: (value){
                  setState(() {
                    _job = value!;
                  });
                },
              ),
            FilledButton( //TextButton, FilledButton, OutlinedButton, ElevatedButton
            style: FilledButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.black
          ),
            onPressed: (){
              _formKey.currentState!.validate();
              _formKey.currentState!.save();
              data.add(
                Person(name: _name, age: _age, job: _job)
              );
              _formKey.currentState!.reset();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => const MyApp()));
            }, 
            child: Text("Submit", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 30),
            ],
          ),
        ),
        ),
    ),
  );
  }
}