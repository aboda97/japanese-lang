import 'package:flutter/material.dart';
import 'package:weights/components/container_language_component.dart';
import 'package:weights/models/number_model.dart';

import '../../components/components.dart';

class NumbersPage extends StatelessWidget {
  List<NumberModel> numbersList = [
    NumberModel(image: 'assets/images/numbers/number_one.png', enName: 'one', jpName: 'ichi',sounds: 'number_one_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_two.png', enName: 'two', jpName: 'Ni',sounds: 'number_two_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_three.png', enName: 'three', jpName: 'san',sounds: 'number_three_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_four.png', enName: 'four', jpName: 'yon',sounds: 'number_four_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_five.png', enName: 'five', jpName: 'go',sounds: 'number_five_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_six.png', enName: 'six', jpName: 'muttsu',sounds: 'number_six_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_seven.png', enName: 'seven', jpName: 'nana',sounds: 'number_seven_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_eight.png', enName: 'eight', jpName: 'hachi',sounds: 'number_eight_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_nine.png', enName: 'nine', jpName: 'kyuu',sounds: 'number_nine_sound.mp3'),
    NumberModel(image: 'assets/images/numbers/number_ten.png', enName: 'ten', jpName: 'juu',sounds: 'number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6B4226),
        title: Text('NUMBERS PAGE'),
      ),
      body: ListView.builder(
        itemCount: numbersList.length,
          itemBuilder: (context, index){
        return ContainerLanguageComponent(numbers: numbersList[index],);
      })

      // ListView(
      //   children: getNumberItem(numbersList)

          // ContainerLanguageComponent(numbers: numbersList[0]),
          // ContainerLanguageComponent(numbers: numbersList[1]),
          // ContainerLanguageComponent(numbers: numbersList[2]),
          // ContainerLanguageComponent(numbers: numbersList[3]),
          // ContainerLanguageComponent(numbers: numbersList[4]),
          // ContainerLanguageComponent(numbers: numbersList[5]),
          // ContainerLanguageComponent(numbers: numbersList[6]),
          // ContainerLanguageComponent(numbers: numbersList[7]),
          // ContainerLanguageComponent(numbers: numbersList[8]),
          // ContainerLanguageComponent(numbers: numbersList[9]),
     // ),
    );
  }

  // List<Widget> getNumberItem(List<NumberModel> numbers){
  //   List<Widget> itemList = [];
  //   for (int i = 0; i < numbersList.length; i++){
  //     itemList.add(ContainerLanguageComponent(numbers: numbers[i]));
  //   }
  //   return itemList;
  // }
}
