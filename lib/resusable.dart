import 'package:flutter/material.dart';

Widget  randomContainer(String text,BuildContext context)=> Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(text,
        textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white, // Sets the text color to white
      ),
      ),
    ),
      width: MediaQuery.of(context).size.width,
    decoration:BoxDecoration(
        border: Border.all(
          color: Colors.white, width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
    ),
  ),
);