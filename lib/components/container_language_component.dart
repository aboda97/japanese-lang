import 'package:flutter/material.dart';
import 'package:weights/models/number_model.dart';
import 'package:audioplayers/audioplayers.dart';

class ContainerLanguageComponent extends StatelessWidget {
  const ContainerLanguageComponent({Key? key, required this.numbers})
      : super(key: key);
  final NumberModel numbers;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Color(0xffFF9E3A),
      child: Row(
        children: [
          Container(
              color: Color(0xffFEF3D9), child: Image.asset(numbers.image)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  numbers.jpName,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  numbers.enName,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/numbers/');
                    player.play(numbers.sounds);
                    print('sound on');
                  } catch (error) {
                    print(error);
                  }
                },
                icon: Icon(
                  Icons.play_circle,
                  size: 28.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}
