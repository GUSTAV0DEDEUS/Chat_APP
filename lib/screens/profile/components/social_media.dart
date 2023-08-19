import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        linkedMedia('assets/images/icon1.png',
            'https://github.com/GUSTAV0DEDEUS', Colors.black),
        const SizedBox(
          width: 12,
        ),
        linkedMedia(
            'assets/images/icon2.png',
            'https://www.linkedin.com/in/gustavo-de-deus-conceicao',
            Colors.blueAccent),
        const SizedBox(
          width: 12,
        ),
        linkedMedia('assets/images/icon3.png',
            'https://www.youtube.com/@deCode001', Colors.red),
        const SizedBox(
          width: 12,
        ),
        linkedMedia('assets/images/icon4.png',
            'https://www.instagram.com/decode0001/', Colors.pinkAccent),
        const SizedBox(
          width: 12,
        ),
        linkedMedia('assets/images/icon5.png', 'https://twitter.com/deCode0001',
            Colors.blue),
      ],
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
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: Image.asset(image, width: 25, height: 25),
      ),
    );
  }
}