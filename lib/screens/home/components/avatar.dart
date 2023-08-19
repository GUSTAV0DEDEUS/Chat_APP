import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app/utils/font.dart';

class Avatar extends StatelessWidget {
  final String name;
  final dynamic icon;

  const Avatar({required this.name, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              border: Border.all(
                  color: icon is IconData
                      ? Colors.transparent
                      : const Color.fromRGBO(3, 169, 244, .2),
                  width: 2),
              shape: BoxShape.circle,
              color: icon is IconData ? Colors.grey[200] : Colors.transparent,
            ),
            child: icon is IconData
                ? Icon(icon)
                : CircleAvatar(
                    backgroundImage: AssetImage(icon as String),
                    radius: 30,
                  ),
          ),
          const SizedBox(height: kIsWeb ? 0 : 4),
          Text(
            name,
            style: font().titleSmall,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
