import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
   MyTextField({
    super.key,
    required this.hintText,
    required this.obsecureText,
    required this.controller
    });

 final String? hintText;
 final bool obsecureText;
 final controller;


//controller used to controll and edit text in the field by user

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25),
  child: TextField(
    controller: controller,
    obscureText: obsecureText,
    decoration: InputDecoration(
      hintStyle: TextStyle(fontFamily: 'Playwrite Cuba',color: Colors.black),
      hintText: hintText,
      enabledBorder:const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white)
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade400)
      ),
      fillColor: Colors.grey.shade200,
      filled: true,
    ),
  ),
);
  }
}