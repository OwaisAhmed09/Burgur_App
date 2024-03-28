import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Contact(bgcolor , textcolor, icon_color, head_text, down_text, icon ) {
  return Container(
    // alignment: Alignment.center,
    height: 55,
    width: 126,
    decoration: BoxDecoration(
      color: bgcolor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          head_text,
          style: GoogleFonts.kavoon(
            textStyle: TextStyle(fontSize: 14, color: textcolor),
          ),
        ),
        InkWell(
          hoverColor: Colors.blue.shade900,
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: icon_color,
              ),
              Text(
                down_text,
                style: TextStyle(fontSize: 12, color: textcolor),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
