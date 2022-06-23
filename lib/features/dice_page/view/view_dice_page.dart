import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rpg/core/constants/images_strings.dart';
import 'package:rpg/core/widgets/custom_row.dart';

class ViewHomeDice extends StatelessWidget {
  const ViewHomeDice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 224, 137),
        image: DecorationImage(
          opacity: 0.3,
          image: AssetImage(ImagesStrings.background),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   CustomRow(
                    diceName1: 'D4',
                    diceMinNumber1: 1,
                    diceMaxNumber1: 5,
                    diceName2: 'D6',
                    diceMinNumber2: 1,
                    diceMaxNumber2: 7,
                    diceImage1: ImagesStrings.dice4,
                    diceImage2: ImagesStrings.dice6,
                  ),
                   CustomRow(
                    diceName1: 'D8',
                    diceMinNumber1: 1,
                    diceMaxNumber1: 9,
                    diceName2: 'D10',
                    diceMinNumber2: 1,
                    diceMaxNumber2: 11,
                    diceImage1: ImagesStrings.dice8,
                    diceImage2: ImagesStrings.dice10,
                  ),
                   CustomRow(
                    diceName1: 'D12',
                    diceMinNumber1: 1,
                    diceMaxNumber1: 13,
                    diceName2: 'D20',
                    diceMinNumber2: 1,
                    diceMaxNumber2: 21,
                    diceImage1: ImagesStrings.dice12,
                    diceImage2: ImagesStrings.dice20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    IconButton(
                      onPressed: () {
                        Modular.to.pushNamed('/infopage/');
                      },
                      icon: const Icon(Icons.info_outline,
                      color: Color(0xFFBF6836),),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
