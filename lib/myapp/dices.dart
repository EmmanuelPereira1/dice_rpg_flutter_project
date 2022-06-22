import 'package:flutter/material.dart';
import 'package:rpg/core/widgets/custom_row.dart';
import '../myapp/info.dart';

class ViewHomeDice extends StatelessWidget {
  const ViewHomeDice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 224, 137),
        image: DecorationImage(
          opacity: 0.2,
          image: AssetImage("assets/images/wall.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Image(
            image: AssetImage("assets/images/date.png"),
            height: 150,
            width: 150,
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const CustomRow(
                    diceName1: 'D4',
                    diceMinNumber1: 1,
                    diceMaxNumber1: 5,
                    diceName2: 'D6',
                    diceMinNumber2: 1,
                    diceMaxNumber2: 7,
                    diceImage1: 'assets/images/dice1.png',
                    diceImage2: 'assets/images/dice1.png',
                  ),
                  const CustomRow(
                    diceName1: 'D8',
                    diceMinNumber1: 1,
                    diceMaxNumber1: 9,
                    diceName2: 'D10',
                    diceMinNumber2: 1,
                    diceMaxNumber2: 11,
                    diceImage1: 'assets/images/dice1.png',
                    diceImage2: 'assets/images/dice1.png',
                  ),
                  const CustomRow(
                    diceName1: 'D12',
                    diceMinNumber1: 1,
                    diceMaxNumber1: 13,
                    diceName2: 'D20',
                    diceMinNumber2: 1,
                    diceMaxNumber2: 21,
                    diceImage1: 'assets/images/dice1.png',
                    diceImage2: 'assets/images/dice1.png',
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Info()));
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
