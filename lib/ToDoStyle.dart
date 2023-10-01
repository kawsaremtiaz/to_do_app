import 'package:flutter/material.dart';

InputDecoration ToDoinputDecoration(label){
  return InputDecoration(
    contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
    border: const OutlineInputBorder(),
    labelText: label
  );
}

ButtonStyle ToDoEleveted(){
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(24),
    backgroundColor: Colors.green,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(3.0))
    )
  );
}

SizedBox ToDoSizeBox(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      child: child,
    ),
  );
}