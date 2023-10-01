import 'package:flutter/material.dart';
import 'ToTo_Page.dart';
void main(){
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget{
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To Do App",
      theme: ThemeData(primarySwatch: Colors.green),
      home: const toDo_Page(),
    );
  }

}