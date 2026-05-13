
import 'package:flutter/material.dart';
import 'package:snackbar/core/snackbar/mysnackbar.dart';
import 'package:snackbar/models/students_model.dart';

class StudentListView extends StatelessWidget {
  const StudentListView({
    super.key,
    required this.lstStudents,
    required this.onDelete,
  });

  final List<StudentsModel> lstStudents;
  final Function(int index) onDelete; 

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
              onDelete(index);
              showMySnackBar(context: context, message: "Student is deleted Successfully", color: Colors.red);
            }, icon: Icon(Icons.delete),
          ),
          title: Text("${lstStudents[index].fname} ${lstStudents[index].lname} "),
          subtitle: Text(lstStudents[index].cities),
    
        )
        
      ),
    );
  }
}