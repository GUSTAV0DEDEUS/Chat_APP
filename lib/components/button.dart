import 'package:flutter/material.dart';
import 'package:my_app/screens/profile/profile.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Profile(),
            ));
      },
      child: SizedBox(
        height: 50,
        width: 80,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: Colors.blue[50],
                ),
              ),
            ),
            const Positioned(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
