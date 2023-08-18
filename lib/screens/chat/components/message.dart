import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/models/person.dart';

class MessageText extends StatelessWidget {
  const MessageText({
    super.key,
    required this.width,
    required this.person,
  });

  final double width;
  final Person person;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: width * 1,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(2),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Text(
            person.lastMessage,
            style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Icon(
              Icons.done_all_rounded,
              color: Colors.greenAccent,
              size: 14,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '9:30 AM',
              style: GoogleFonts.poppins(
                  fontSize: 14, color: Colors.grey),
            )
          ],
        )
      ],
    );
  }
}

