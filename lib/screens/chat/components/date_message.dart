import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/models/person.dart';
import 'package:my_app/screens/chat/components/message.dart';

class DataMessage extends StatelessWidget {
  const DataMessage({
    super.key,
    required this.width,
    required this.person,
  });

  final double width;
  final Person person;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Divider(color: Colors.grey[300]),
            Positioned(
              child: Container(
                color: Colors.grey[100],
                padding: const EdgeInsets.all(8),
                child: Text(
                  'Today',
                  style: GoogleFonts.poppins(
                    color: Colors.grey[300],
                    fontSize: 14,
                  ),
                ),
              ),
            )
          ],
        ),
        MessageText(width: width, person: person),
      ],
    );
  }
  }