import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rpg/core/constants/color_app.dart';

class CustomRow extends StatelessWidget {
  final int diceMinNumber1;
  final int diceMaxNumber1;
  final int diceMinNumber2;
  final int diceMaxNumber2;
  final String diceName1;
  final String diceName2;
  final String diceImage1;
  final String diceImage2;
  const CustomRow({
    Key? key,
    required this.diceMinNumber1,
    required this.diceMaxNumber1,
    required this.diceMinNumber2,
    required this.diceMaxNumber2,
    required this.diceName1,
    required this.diceName2,
    required this.diceImage1,
    required this.diceImage2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                fixedSize: const Size(130, 130),
                primary: Colors.transparent),
            child: Stack(children: [
              Image(image: AssetImage(diceImage1)),
             
              Text(
                diceName1,
                style:  TextStyle(
                  color: ColorApp.colorIcons,
                  fontSize: 17,
                ),
              ),
            ]),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        backgroundColor: ColorApp.background,
                        title: Text('Result',
                        style: TextStyle(
                          color: ColorApp.colorIcons,
                        ),),
                        content: Text(
                          diceNumbers1(),
                          style: TextStyle(
                            fontSize: 70,
                            color: ColorApp.colorIcons),
                          textAlign: TextAlign.center,
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child:  Text('OK',
                            style: TextStyle(
                              fontSize: 17,
                              color: ColorApp.teste2,
                            ),),
                          )
                        ],
                      ));
            }),
        const SizedBox(
          width: 30,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
                fixedSize: const Size(130, 130),
                primary: Colors.transparent),
            child: Stack(children: [
              Image(image: AssetImage(diceImage2)),
              Text(
                diceName2,
                style: TextStyle(
                  color: ColorApp.colorIcons,
                  fontSize: 17,
                ),
              ),
            ]),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: ColorApp.background,
                        title: Text('Result',
                        style: TextStyle(
                          color: ColorApp.colorIcons,
                        ),),
                        content: Text(
                          diceNumbers2(),
                          style: TextStyle(
                          fontSize: 70,
                          color: ColorApp.colorIcons),
                          textAlign: TextAlign.center,
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('OK',
                            style: TextStyle(
                              fontSize: 17,
                              color: ColorApp.teste2,
                            ),),
                          )
                        ],
                      ));
            }),
      ],
    );
  }

  /// diceNumbers1() is a function that returns a random number between 1 and 6
  /// 
  /// Returns:
  ///   A random number between 1 and 6.
  String diceNumbers1() {
    int random(min, max) {
      return min + Random().nextInt(max - min);
    }

    return random(diceMinNumber1, diceMaxNumber1).toString();
  }

  String diceNumbers2() {
    int random(min, max) {
      return min + Random().nextInt(max - min);
    }

    return random(diceMinNumber2, diceMaxNumber2).toString();
  }
}
