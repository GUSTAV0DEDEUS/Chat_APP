import 'package:flutter/material.dart';
import 'package:my_app/screens/contact/constacts.dart';
import 'dart:ui' as ui;

import 'package:my_app/screens/home/home.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: BottomAppBar(
          color: const Color.fromRGBO(255, 255, 255, .4),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                icon: const Icon(Icons.chat_bubble_outline_rounded),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Contact(),
                      ));
                },
                icon: const Icon(Icons.person_2_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
