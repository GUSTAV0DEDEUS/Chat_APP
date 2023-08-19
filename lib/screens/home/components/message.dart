import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_app/utils/font.dart';

class Message extends StatelessWidget {
  final bool state;
  final String image;
  final String userName;
  final String lastMessage;
  final DateTime lastVisited;
  final bool checked;
  const Message(
      {required this.state,
      required this.image,
      required this.userName,
      required this.lastMessage,
      required this.lastVisited,
      required this.checked,
      super.key});

  @override
  Widget build(BuildContext context) {
    final int number = Random().nextInt(8) + 1;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(image),
                      radius: 25,
                    ),
                    Positioned(
                      bottom: 1,
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: state ? Colors.greenAccent : Colors.redAccent,
                          border: Border.all(width: 2, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style:  font(Colors.black, FontWeight.w700).titleSmall, overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        lastMessage,
                        style:  font(Colors.black, FontWeight.w400).bodySmall,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(DateFormat.jm().format(lastVisited)),
                Stack(
                  children: [
                    checked
                        ? const Icon(Icons.done_all_rounded)
                        : Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                            child: Center(
                              child: Text(
                                number.toString(),
                                style: font(Colors.white,FontWeight.w700).labelSmall,
                            ),
                              )      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  
}
