import 'package:flutter/material.dart';

Widget containerBuild({String? text, Color? color, Function()? onTap}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16.0),
        height: 65.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: color,
        ),
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
//----------------------------------------------------------------------------------------------------------------
void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);
//----------------------------------------------------------------------------------------------------------------


