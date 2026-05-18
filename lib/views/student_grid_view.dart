import 'package:flutter/material.dart';

class StudentGridView extends StatelessWidget {
  const StudentGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Grid Vview"),centerTitle: true, ),
      body: GridView.count(
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount:3,
        children: [
          for (int i = 1; i<=10;i++)...{
            SizedBox(child: Text("$i"),)
          }
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.yellow,
          //   child: Text("10",
          //   style: TextStyle(fontSize: 66, fontWeight: FontWeight.bold),),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.yellow,
          //   child: Text("21",
          //   style: TextStyle(fontSize: 66, fontWeight: FontWeight.bold),),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.yellow,
          //   child: Text("3",
          //   style: TextStyle(fontSize: 66, fontWeight: FontWeight.bold),),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.yellow,
          //   child: Text("41",
          //   style: TextStyle(fontSize: 66, fontWeight: FontWeight.bold),),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.yellow,
          //   child: Text("5",
          //   style: TextStyle(fontSize: 66, fontWeight: FontWeight.bold),),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.yellow,
          //   child: Text("11",
          //   style: TextStyle(fontSize: 66, fontWeight: FontWeight.bold),),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   color: Colors.yellow,
          //   child: Text("78",
          //   style: TextStyle(fontSize: 66, fontWeight: FontWeight.bold),),
          // )
        ],
        ),
    );
  }
}