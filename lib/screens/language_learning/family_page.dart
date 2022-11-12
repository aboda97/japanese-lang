import 'package:flutter/material.dart';
import 'package:weights/components/family_component.dart';
import 'package:weights/models/family_model.dart';

class FamilyPage extends StatelessWidget {

  List<FamilyModel> FamilyList = [
    FamilyModel(image: 'assets/images/family_members/family_grandfather.png', enName: 'Grand Father', jpName: 'sofu',sounds: 'grand father.wav'),
    FamilyModel(image: 'assets/images/family_members/family_grandmother.png', enName: 'Grand Mother', jpName: 'sobo',sounds: 'grand mother.wav'),
    FamilyModel(image: 'assets/images/family_members/family_father.png', enName: 'Father', jpName: 'chichi',sounds: 'father.wav'),
    FamilyModel(image: 'assets/images/family_members/family_mother.png', enName: 'Mother', jpName: 'haha',sounds: 'mother.wav'),
    FamilyModel(image: 'assets/images/family_members/family_older_brother.png', enName: 'Older Brother', jpName: 'ani',sounds: 'older bother.wav'),
    FamilyModel(image: 'assets/images/family_members/family_older_sister.png', enName: 'Older Sister', jpName: 'ane',sounds: 'older sister.wav'),
    FamilyModel(image: 'assets/images/family_members/family_son.png', enName: 'Son', jpName: 'musuko',sounds: 'son.wav'),
    FamilyModel(image: 'assets/images/family_members/family_daughter.png', enName: 'Daughter', jpName: 'musume',sounds: 'daughter.wav'),
    FamilyModel(image: 'assets/images/family_members/family_younger_brother.png', enName: 'Younger Brother', jpName: 'otouto',sounds: 'younger sister.wav'),
    FamilyModel(image: 'assets/images/family_members/family_younger_sister.png', enName: 'Younger Sister', jpName: 'imoto',sounds: 'younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6B4226),
        title: Text('FAMILY PAGE'),
      ),
      body: ListView.builder(
          itemCount: FamilyList.length,
          itemBuilder: (context, index){
            return FamilyComponent(family: FamilyList[index],);
          }),
    );
  }
}
