import 'package:flutter/material.dart';
import 'package:snackbar/views/student_details_view.dart';
import 'package:snackbar/views/students_output_list_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => StudentDetailsView(),
        '/output': (context) => StudentOutputListView(),
      },
      // home: StudentDetailsView(),
    );
  }
}
