import 'package:burgur_app/screens/wigits/card.dart';
import 'package:burgur_app/screens/wigits/colors.dart';
import 'package:burgur_app/screens/wigits/contact.dart';
import 'package:burgur_app/screens/wigits/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorconstants.black,
        title: Image.asset(
          'assets/images/Capa_2.png',
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              Textconstant.apptext1,
              style: TextStyle(
                color: Colorconstants.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              Textconstant.apptext2,
              style: TextStyle(
                color: Colorconstants.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              Textconstant.apptext3,
              style: TextStyle(
                color: Colorconstants.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              Textconstant.apptext4,
              style: TextStyle(
                color: Colorconstants.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              color: Colorconstants.black,
              child: Stack(
                children: [
                  Positioned(
                    bottom: -200,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset(
                        'assets/images/banBg.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 150,
                    bottom: 30,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Image.asset(
                        'assets/images/burgur.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height * 0.20,
                      left: 25,
                      bottom: 120,
                      child: Text(
                        Textconstant.bannerText,
                        style: GoogleFonts.kavoon(
                            textStyle: const TextStyle(
                                fontSize: 30, color: Colors.white)),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Text(Textconstant.dealtoptext,
                style: GoogleFonts.kavoon(
                    textStyle: const TextStyle(fontSize: 20))),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 300,
              //  MediaQuery.sizeOf(context).height * 0.5,
              width: MediaQuery.sizeOf(context).width * 1,

              child: const CustumCard(),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colorconstants.red,
              ),
              width: double.infinity,
              height: 150,
              child: Row(
                children: [
                  Container(
                    width: 190,
                    padding: EdgeInsets.all(12),
                    child: Image.asset(
                      'assets/images/burgur_bnr.png',
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(Textconstant.banner_2,
                          style: GoogleFonts.kavoon(
                              textStyle: TextStyle(
                                  fontSize: 18, color: Colorconstants.white))),
                      Text(Textconstant.banner_2_center,
                          style: GoogleFonts.kavoon(
                              textStyle: TextStyle(
                                  fontSize: 18, color: Colorconstants.white,
                                  
                                 
                                  ))),
                  
                     
                      Text(
                        Textconstant.banner_2_botom,
                        style: GoogleFonts.kavoon(
                          textStyle: TextStyle(
                              fontSize: 20, color: Colorconstants.yellow, 

                              ), 
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      Textconstant.domicilio_Text,
                      style: GoogleFonts.kavoon(
                        textStyle: const TextStyle(fontSize: 23),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Image.asset(
                      'assets/images/delivery1.png',
                      fit: BoxFit.fill,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.2,
                    ),
                    const SizedBox(height: 7),
                    Contact(
                        Colorconstants.black,
                        Colorconstants.white,
                        Colorconstants.white,
                        "Llamanos al",
                        "605 1444-88",
                        Icons.call),
                    const SizedBox(height: 15),
                    Contact(
                        Colorconstants.black,
                        Colorconstants.white,
                        Colorconstants.white,
                        "Escribenos al",
                        "+57 232 5456286",
                        Icons.wifi_calling_3_outlined),
                    const SizedBox(height: 30),
                  ],
                ),
                // SizedBox(width: 90),
                Column(
                  children: [
                    Text(
                      Textconstant.Resturant_Text,
                      style: GoogleFonts.kavoon(
                        textStyle: const TextStyle(fontSize: 23),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Image.asset(
                      'assets/images/Frame1.png',
                      fit: BoxFit.fill,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                    ),
                    const SizedBox(height: 7),
                    Image.asset(
                      'assets/images/Frame2.png',
                      fit: BoxFit.fill,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                    ),
                    const SizedBox(height: 7),
                    Image.asset(
                      'assets/images/Frame3.png',
                      fit: BoxFit.fill,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                    ),
                    const SizedBox(height: 7),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 210,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(color: Colorconstants.black),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Redes Sociales",
                              style: GoogleFonts.kavoon(
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colorconstants.white))),
                          Text("Necesitas ayuda?",
                              style: GoogleFonts.kavoon(
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colorconstants.white))),
                          const Icon(
                            Icons.facebook_sharp,
                            color: Colors.white,
                          ),
                          const Icon(
                            Icons.wifi_calling_3_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            width: 300.0,
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris ",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colorconstants.white,
                                    height: 1.5)),
                          ),
                          Text("Copyright (c)- Juan Alvarado-Pandax-2023 ",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colorconstants.white,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
