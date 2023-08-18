import 'package:flutter/material.dart';
import 'package:my_app/screens/gallery/gallery.dart';
import 'package:my_app/screens/home/components/avatar.dart';
import 'package:my_app/models/person.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class AvatarList extends StatelessWidget {
  final List<Person> persons;
  const AvatarList({required this.persons, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: persons.length,
      itemBuilder: (_, index) {
        final person = persons[index];
        if (person.images!.isNotEmpty) {
          if (index == 0) {
            return const Avatar(name: 'Search', icon: Icons.search);
          }
          return InkWell(onTap: (){
             Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Gallery(),
                settings: RouteSettings(arguments: person),
              ),
            );
          },child: Avatar(name: person.name, icon: person.image));
        }
        return const SizedBox.shrink();
      },
      separatorBuilder: (_, index) {
        if (persons[index].images!.isNotEmpty) {
          return const SizedBox(width: 15,);
        }
        return const SizedBox.shrink();
      }
    );
  }
}
