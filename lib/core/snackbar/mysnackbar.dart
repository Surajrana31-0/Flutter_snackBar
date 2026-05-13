import 'package:flutter/material.dart';

void showMySnackBar({
  required BuildContext context,
  required String message,
  Color color = Colors.green,

}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message),
    backgroundColor: color,
    behavior: SnackBarBehavior.floating,
    duration: Duration(seconds: 1),)
  
  );
}