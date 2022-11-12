import 'package:flutter/material.dart';
import 'package:weights/models/family_model.dart';
import 'package:audioplayers/audioplayers.dart';

class FamilyComponent extends StatelessWidget {
  const FamilyComponent({Key? key, required this.family})
      : super(key: key);
  final FamilyModel family;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Color(0xff527F30),
      child: Row(
        children: [
          Container(
              color: Color(0xffFEF3D9), child: Image.asset(family.image)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  family.jpName,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  family.enName,
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
                    AudioCache(prefix: 'assets/sounds/family_members/');
                    player.play(family.sounds);
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
