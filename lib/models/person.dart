import 'package:flutter/material.dart';

enum Job {
  student(title:"Student", color: Colors.green),
  teacher(title:"Teacher", color: Colors.red);

  const Job({
    required this.title,
    required this.color
    });
  final String title;
  final Color color;
}

class Person{
  Person({
    required this.name,
    required this.age,
    required this.job,
  });
  String name;
  int age;
  Job job;
}

List<Person> data = [
  Person(name: "Boom", age: 19, job: Job.student),
  Person(name: "Sugus", age: 20, job: Job.student),
  Person(name: "Wish", age: 19, job: Job.student),
  Person(name: "Ayo", age: 99, job: Job.teacher),
];