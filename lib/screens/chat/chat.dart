import 'package:flutter/material.dart';
import 'package:my_app/models/person.dart';
import 'package:my_app/screens/chat/components/date_message.dart';
import 'package:my_app/screens/chat/components/header.dart';
import 'package:my_app/screens/chat/components/input_message.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    final person = ModalRoute.of(context)!.settings.arguments as Person;
    const double toolbarHeight = 80;
    final height = MediaQuery.of(context).size.height - toolbarHeight;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: toolbarHeight,
        title: Header(person: person),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          )
        ],
      ),
      body: SizedBox(
        height: height * 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Container(
                width: width * .8,
                alignment: Alignment.center,
                child: DataMessage(width: width, person: person),
              ),
            ),
            InputMessage(width: width)
          ],
        ),
      ),
    );
  }
}


