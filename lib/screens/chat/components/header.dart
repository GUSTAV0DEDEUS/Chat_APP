import 'package:flutter/material.dart';
import 'package:my_app/models/person.dart';
import 'package:my_app/screens/profile/profile.dart';
import 'package:my_app/utils/font.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.person,
  });

  final Person person;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Profile(),
                settings: RouteSettings(arguments: person),
              ),
            );
      },
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(person.image),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  person.name,
                  style: font(Colors.black, FontWeight.w600).titleSmall,
                ),
                Text(
                  'Online',
                  style: font(Colors.greenAccent, FontWeight.w500).bodySmall,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  
}
