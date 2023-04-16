import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 5.0),
            enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(width: 3, color: Colors.grey.shade800), //<-- SEE HERE
              borderRadius: BorderRadius.circular(20.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(width: 3, color: Colors.grey.shade800), //<-- SEE HERE
              borderRadius: BorderRadius.circular(20.0),
            ),


            fillColor: Colors.grey.shade800,
            filled: true,
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.pink[900])),
      ),
    );
  }
}