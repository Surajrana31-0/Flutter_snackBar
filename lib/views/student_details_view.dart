import 'package:flutter/material.dart';
import 'package:snackbar/core/common/student_listview.dart';
import 'package:snackbar/core/snackbar/mysnackbar.dart';
import 'package:snackbar/models/students_model.dart';

class StudentDetailsView extends StatefulWidget {
  const StudentDetailsView({super.key});

  @override
  State<StudentDetailsView> createState() => _StudentDetailsViewState();
}

class _StudentDetailsViewState extends State<StudentDetailsView> {
  final _gap = SizedBox(height: 10);
  final items = [
    DropdownMenuItem(value: "Kathmandu", child: Text("Kathmandu")),
    DropdownMenuItem(value: "Pokhara", child: Text("Pokhara")),
    DropdownMenuItem(value: "Mahendranagar", child: Text("Mahendranagar")),
    DropdownMenuItem(value: " Dhangadi", child: Text("Dhangadi")),
    DropdownMenuItem(value: "Nepalgunj", child: Text("Nepalgunj")),
  ];

  List<StudentsModel> lstStudents = [];

  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  // final _selectedCityController = TextEditingController();

  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student details"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _fnameController,
              decoration: InputDecoration(
                labelText: "Enter First Name", //hint text or level text
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            TextFormField(
              controller: _lnameController,
              decoration: InputDecoration(
                hintText: "Enter Last Name", //hint text or level text
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            DropdownButtonFormField(
              // icon: Icon(Icons.),
              items: items,
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
              decoration: InputDecoration(
                hintText: "Select Cities",
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  showMySnackBar(
                    context: context,
                    message: "Student is added Successfully",
                    color: Colors.green,
                  );
                  StudentsModel student = StudentsModel(
                    fname: _fnameController.text.trim(),
                    lname: _lnameController.text.trim(),
                    cities: selectedCity!,
                  );
                  setState(() {
                    lstStudents.add(student);
                  });
                  // // lstStudents.add(student);
                  // debugPrint(
                  //   lstStudents.length.toString(),
                  // ); // It shows the student is successfully added
                },
                child: Text("Add Student"),
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () async {
                  
                  await Navigator.pushNamed(//this await is used to rebuilt the state when come back
                    context,
                    "/output",
                    arguments: lstStudents,
                  );
                  setState(() {
                    
                  });
                },
                child: Text("View Student"),
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () async {
                  
                  await Navigator.pushNamed(//this await is used to rebuilt the state when come back
                    context,
                    "/card",
                    arguments: lstStudents,
                  );
                  setState(() {
                    
                  });
                },
                child: Text("card View"),
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () async {
                  
                  await Navigator.pushNamed(//this await is used to rebuilt the state when come back
                    context,
                    "/grid",
                    arguments: lstStudents,
                  );
                  setState(() {
                    
                  });
                },
                child: Text("Grid View"),
              ),
            ),

            //Display the student in list view
            lstStudents.isEmpty
                ? Text("No Data")
                // : Text("Data Xha")
                : StudentListView(
                    lstStudents: lstStudents,
                    onDelete: (int index) {
                      setState(() {
                        lstStudents.removeAt(index);
                      });
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
