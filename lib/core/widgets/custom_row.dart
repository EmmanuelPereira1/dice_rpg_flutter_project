import 'dart:math';
import 'package:flutter/material.dart';

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
//D4

        ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                fixedSize: const Size(130, 130),
                primary: const Color.fromARGB(0, 155, 39, 176)),
            child: Stack(children: [
              Image(image: AssetImage(diceImage1)),
              Text(
                diceName1,
                style: const TextStyle(
                  color: Color(0xFFBF6836),
                  fontSize: 15,
                ),
              ),
            ]),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text('Result'),
                        content: Text(
                          diceNumbers1(),
                          style: const TextStyle(fontSize: 70),
                          textAlign: TextAlign.center,
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('OK'),
                          )
                        ],
                      ));
            }),
        const SizedBox(
          width: 70,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
                fixedSize: const Size(130, 130),
                primary: const Color.fromARGB(0, 155, 39, 176)),
            child: Stack(children: [
              Image(image: AssetImage(diceImage2)),
              Text(
                diceName2,
                style: const TextStyle(
                  color: Color(0xFFBF6836),
                  fontSize: 15,
                ),
              ),
            ]),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text('Result'),
                        content: Text(
                          diceNumbers2(),
                          style: const TextStyle(fontSize: 70),
                          textAlign: TextAlign.center,
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('OK'),
                          )
                        ],
                      ));
            }),
      ],
    );
  }

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
