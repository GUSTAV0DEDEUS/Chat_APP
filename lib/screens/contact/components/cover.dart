import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  const Cover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 220,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              alignment: Alignment.center,
              image:
                  AssetImage('assets/images/back.jpg'),
            ),
          ),
          clipBehavior: Clip.antiAlias,
        ),
        Positioned(
          bottom: -40,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.white10,
                  shape: BoxShape.circle,
                ),
              ),
              const Positioned(
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage:
                      AssetImage('assets/images/avatar.jpg'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
