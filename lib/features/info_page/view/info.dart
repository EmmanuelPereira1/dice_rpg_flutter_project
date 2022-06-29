import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const longString = 'A simple RPG dice app, '
    'to live the best adventures are in books '
    'from D&D or other a great way to have fun with '
    'the friends. '
    ' '
    'Developed by Emmanuel Pereira ';

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
        Text(
          longString,
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
        image:  
        DecorationImage(
          image: NetworkImage("https://c.tenor.com/jWhi_6_kVEYAAAAC/dark-souls.gif"),
        fit: BoxFit.fill,
        ),
      ),
    );
  }
}