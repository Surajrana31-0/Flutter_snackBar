import 'package:flutter/material.dart';
import 'package:snackbar/core/common/student_listview.dart';
import 'package:snackbar/models/students_model.dart';

class StudentOutputListView extends StatefulWidget {
  const StudentOutputListView({super.key});

  @override
  State<StudentOutputListView> createState() => _StudentOutputListViewState();
}

class _StudentOutputListViewState extends State<StudentOutputListView> {
  List<StudentsModel> lstStudents = [];

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    lstStudents =
        ModalRoute.of(context)!.settings.arguments as List<StudentsModel>;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: lstStudents.isEmpty
          ? Center(child: Text("Data xha"))
          : StudentListView(lstStudents: lstStudents),
    );
  }
}
