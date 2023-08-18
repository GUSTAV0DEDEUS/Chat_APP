import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width - 24;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(top: height * .1),
                alignment: Alignment.topCenter,
                child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: width,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Gustavo de Deus Conceição',
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                                const SizedBox(height: 2),
                                Text('1431432312013',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      top: -40,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar.jpg'),
                        radius: 50,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: const EdgeInsets.only(top: 12),
                width: width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: Center(
                  child: Container(
                      width: width * .8,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(15)),
                        color: Colors.white70,
                      ),
                      child: Text(
                        '🌟 Explorando o mundo com olhos curiosos 🌍✨\n📸 Capturando momentos e compartilhando histórias 📷📖\n🎓 TI\n📍 Itapevi/SP\n🌱 Aprendendo, crescendo e sempre sorrindo!\n💌 Contato: gdedeus60@gmail.com\n#Viagens #Fotografia #Aventuras',
                        style: GoogleFonts.poppins(fontSize: 16, height: 1.7),
                      )),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 12, bottom: 12),
                width: width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    linkedMedia('assets/images/icon1.png',
                        'https://github.com/GUSTAV0DEDEUS', Colors.black)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget linkedMedia(String image, String url, Color color) {
    return InkWell(
      onTap: () {
        launchUrlString(url);
      },
      child: Container(
        alignment: Alignment.center,
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Image.asset(image),
      ),
    );
  }

  void openURL(String url) {
    launchUrlString(url);
  }
}
