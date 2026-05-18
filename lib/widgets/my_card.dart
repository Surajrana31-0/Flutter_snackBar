
import 'package:flutter/material.dart';
import 'package:snackbar/models/students_model.dart';

class Mycard extends StatelessWidget {
  const Mycard({
    super.key,
    required this.student,
    required this.color
  });
  
  final StudentsModel student;
  final int color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: color % 2 == 0
            ? Colors.yellow.shade900      
            : Colors.orange.shade100,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        elevation: 60,//this is shadow 
    
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First name :${student.fname}.",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,
            color: Colors.green.shade900),),
            Text("Last name:${student.lname}.",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
            Text("Aani I'm from:${student.cities}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
          ],
        ),
        // child: Center(
        //   child: Text("Hello I'm Suraj",
        //   style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
        // )
        
      ),
    );
  }
}