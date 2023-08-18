import 'package:flutter/material.dart';
import 'package:my_app/models/person.dart';
import 'package:my_app/screens/home/components/message.dart';
import 'package:my_app/screens/chat/chat.dart';

class MessageList extends StatelessWidget {
  final List<Person> persons;
  const MessageList({required this.persons, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: persons.length,
      itemBuilder: (_, index) {
        final person = persons[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Chat(),
                settings: RouteSettings(arguments: person),
              ),
            );
          },
          child: Message(
              state: person.state,
              image: person.image,
              userName: person.name,
              lastMessage: person.lastMessage,
              lastVisited: person.lastVisited,
              checked: person.checked),
        );
      },
      separatorBuilder: (_, index) => const SizedBox(
        height: 8,
      ),
    );
  }
}
