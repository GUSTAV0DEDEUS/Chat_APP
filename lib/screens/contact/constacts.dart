import 'package:flutter/material.dart';

import 'package:my_app/components/bottom_Bar.dart';

import 'package:my_app/screens/contact/components/cover.dart';
import 'package:my_app/screens/contact/components/list_contact.dart';

// ignore: must_be_immutable
class Contact extends StatelessWidget {
  const Contact({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> alphabet = [
      "a",
      "b",
      "c",
      "d",
      "e",
      "f",
      "g",
      "h",
      "i",
      "j",
      "k",
      "l",
      "m",
      "n",
      "o",
      "p",
      "q",
      "r",
      "s",
      "t",
      "u",
      "v",
      "w",
      "x",
      "y",
      "z"
    ];

    return Scaffold(
      body: Column(
        children: [
          const Expanded(flex: 3, child: Cover()),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          ListContact(alphabet: alphabet)
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
