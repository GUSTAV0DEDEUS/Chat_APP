import 'package:flutter/material.dart';
import 'dart:math';

import 'package:my_app/utils/font.dart';

class InputMessage extends StatelessWidget {
  const InputMessage({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.topCenter,
          color: Colors.white,
          width: width,
          height: 110,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                  width: width * .8,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[100],
                  ),
                ),
                Positioned(
                  right: 8,
                  child: InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20))),
                      child: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 8,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Transform.rotate(
                          angle: pi / 4.0,
                          child: const Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Hello world 🚀',
                          style: font(Colors.grey,FontWeight.w500).bodyMedium,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
 
}
