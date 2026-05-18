import 'package:flutter/material.dart';
import 'package:snackbar/core/snackbar/mysnackbar.dart';
import 'package:snackbar/models/students_model.dart';

import '../widgets/my_card.dart';

class StudentCardView extends StatelessWidget {
  const StudentCardView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<StudentsModel> students = [
      StudentsModel(fname: "Suraj", lname: "Rana", cities: "Kathmandu"),
      StudentsModel(fname: "Suraj", lname: "Rana", cities: "Kathmandu"),
      StudentsModel(fname: "Suraj", lname: "Rana", cities: "Kathmandu"),
      StudentsModel(fname: "Suraj", lname: "Rana", cities: "Kathmandu"),
      StudentsModel(fname: "Suraj", lname: "Rana", cities: "Kathmandu"),
      StudentsModel(fname: "Suraj", lname: "Rana", cities: "Kathmandu"),
      StudentsModel(fname: "Suraj", lname: "Rana", cities: "Kathmandu"),
      StudentsModel(fname: "Suraj", lname: "Rana", cities: "Kathmandu"),
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Student Card View"),centerTitle: true,),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return GestureDetector(
            onTap:() {
              showMySnackBar(context: context, message: "Card is tapped");
            },
            child: Mycard(student: student, color: index,));
        })
    );
  }
}

