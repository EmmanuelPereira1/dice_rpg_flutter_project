import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const longString = 'Um aplicativo simples de dados de RPG, '
    'para viver as melhores aventuras sejam nos livros '
    'de D&D ou outro uma ótima maneira de se divertir com '
    'os amigos. '
    ' '
    'Desenvolvido por Emmanuel Pereira '
    'Nome de jogo (Toninho ou Peranuel) ';


class ViewInfoPage extends StatelessWidget {
  const ViewInfoPage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: (Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text(longString,
        style: TextStyle(fontSize: 30,
          color: Colors.white,
            fontFamily: GoogleFonts.roboto().fontFamily,
              decoration: TextDecoration.none
          ),
                textAlign: TextAlign.center,)
        ],
          )),
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
        image:  DecorationImage(image: NetworkImage("https://c.tenor.com/jWhi_6_kVEYAAAAC/dark-souls.gif"),
        fit: BoxFit.fill,
        ),
      ),
    );
  }
}