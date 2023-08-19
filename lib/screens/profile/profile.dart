import 'package:flutter/material.dart';
import 'package:my_app/screens/profile/components/infos.dart';
import 'package:my_app/screens/profile/components/perfil.dart';
import 'package:my_app/screens/profile/components/social_media.dart';
import 'package:my_app/utils/font.dart';

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
              child: Perfil(height: height, width: width),
            ),
            Expanded(
              flex: 4,
              child: Infos(width: width),
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
                child: const SocialMedia(),
              ),
            )
          ],
        ),
      ),
    );
  }
}


