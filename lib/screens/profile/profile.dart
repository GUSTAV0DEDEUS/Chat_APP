import 'package:flutter/material.dart';
import 'package:my_app/models/person.dart';
import 'package:my_app/screens/profile/components/infos.dart';
import 'package:my_app/screens/profile/components/perfil.dart';
import 'package:my_app/screens/profile/components/social_media.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Person text() {
      final person2 = Person(
          id: 0,
          name: 'Gustavo de Deus Conceição',
          image: 'assets/images/avatar.jpg',
          number: '1431432312013',
          state: true,
          lastMessage: 'oi',
          lastVisited: DateTime.now(),
          checked: true,
          images: []);
      Person person() {
        if (ModalRoute.of(context)!.settings.arguments != null) {
          final person = ModalRoute.of(context)!.settings.arguments as Person;
          return person;
        }
        return person2;
      }

      return person() ;
    }

    final String name = text().name;
    final String number = text().number;
    final String image = text().image;

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width - 24;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Perfil(
                height: height,
                width: width,
                name: name,
                number: number,
                image: image,
              ),
            ),
            Expanded(
              flex: 4,
              child: Infos(
                width: width,
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
                child: SocialMedia(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
