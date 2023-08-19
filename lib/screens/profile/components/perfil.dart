import 'package:flutter/material.dart';
import 'package:my_app/utils/font.dart';

class Perfil extends StatelessWidget {
  const Perfil({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                          style:
                              font(Colors.black, FontWeight.w700).titleMedium),
                      const SizedBox(height: 2),
                      Text('1431432312013',
                          style: font(Colors.black, FontWeight.w400).bodySmall),
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
    );
  }
}
