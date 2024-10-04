import 'package:burgur_app/screens/wigits/colors.dart';
import 'package:burgur_app/screens/wigits/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustumCard extends StatelessWidget {
  const CustumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: 9,
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: [
            Positioned(
              left: 30,
              child: Container(
                decoration: BoxDecoration(
                  color: Colorconstants.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.of(context).size.width * 0.5,
                height: 150,
                // height:  MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        Textconstant.burguer1,
                        style: GoogleFonts.kavoon(
                          textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                            color: Colorconstants.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                      child: Text(
                        Textconstant.cardText,
                        style: GoogleFonts.kavoon(
                          textStyle: TextStyle(
                            fontSize: 12,
                            color: Colorconstants.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.only(right: 9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            Textconstant.price,
                            style: GoogleFonts.kavoon(
                              textStyle: TextStyle(
                                fontSize: 30,
                                color: Colorconstants.yellow,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: -2,
              top: 80,
              child: Image.asset(
                "assets/images/burgur.png",
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
            ),
          ],
        );
      },
    );
  }
}
