
import 'package:flutter/material.dart';
import 'package:snackbar/core/snackbar/mysnackbar.dart';
import 'package:snackbar/models/students_model.dart';

class StudentListView extends StatelessWidget {
  const StudentListView({
    super.key,
    required this.lstStudents,
  });

  final List<StudentsModel> lstStudents;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index){
          return Divider();
        },
        itemCount: lstStudents.length,
        itemBuilder: (context, index) => //Text(lstStudents[index].fname), or
        ListTile(
          leading: Icon(Icons.place),
          trailing: IconButton(
            onPressed: (){
              showMySnackBar(context: context, message: "Student is deleted Successfully", color: Colors.red);
            }, icon: Icon(Icons.delete),
          ),
          title: Text("${lstStudents[index].fname} ${lstStudents[index].lname} "),
          
    
        )
        
      ),
    );
  }
}