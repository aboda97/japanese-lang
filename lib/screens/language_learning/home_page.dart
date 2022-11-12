import 'package:flutter/material.dart';
import 'package:weights/components/components.dart';
import 'package:weights/screens/language_learning/colors_page.dart';
import 'package:weights/screens/language_learning/family_page.dart';
import 'package:weights/screens/language_learning/numbers_page.dart';
import 'package:weights/screens/language_learning/phrases_page.dart';

class HomePageLang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7D6B9),
      appBar: AppBar(
        backgroundColor: Color(0xff6B4226),
        title: Text('Tokyo'),
      ),
      body: Column(
        children: [
          containerBuild(
            onTap: () {
              navigateTo(context, NumbersPage());
            },
            text: 'NUMBERS',
            color: Color(0xffFF9E3A),
          ),
          containerBuild(
            onTap: () {
              navigateTo(context, FamilyPage());
            },
            text: 'FAMILY NUMBERS',
            color: Color(0xff527F30),
          ),
          containerBuild(
            onTap: () {
              navigateTo(context, ColorsPage());
            },
            text: 'COLORS',
            color: Color(0xff844CAC),
          ),
          containerBuild(
            onTap: () {
              navigateTo(context, PhrasesPage());
            },
            text: 'PHRASES',
            color: Color(0xff51AFD3),
          ),
        ],
      ),
    );
  }
}

/*
Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16.0),
            height: 65.0,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Color(0xffFF9E3A)
            ),
            child: Text(
              'NUMBERS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
*/
