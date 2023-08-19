// ignore_for_file: unnecessary_cast
import 'package:flutter/material.dart';
import 'package:my_app/data/DUMMY_DATA.dart';
import 'package:my_app/models/person.dart';
import 'package:my_app/screens/profile/profile.dart';
import 'package:my_app/utils/font.dart';

class ListContact extends StatelessWidget {
  const ListContact({
    super.key,
    required this.alphabet,
  });

  final List<String> alphabet;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
                height: 12,
              ),
          itemBuilder: (context, index) {
            List<Person> items = persons
                .where((item) =>
                    item.name.startsWith(alphabet[index].toUpperCase()) )
                .toList() ;
            return items.isNotEmpty
                ? ListTile(
                    leading: Text(
                      alphabet[index],
                      style: font().headlineLarge,
                      textAlign: TextAlign.left,
                    ),
                    minLeadingWidth: 40,
                    title: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Profile(),
                                  settings: RouteSettings(arguments: items[index] as Person),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage(items[index].image),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  items[index].name,
                                  style: font(Colors.black, FontWeight.w500)
                                      .titleMedium,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 12,
                        ),
                        itemCount: items.length,
                      ),
                    ),
                    titleAlignment: ListTileTitleAlignment.top,
                  )
                : Container();
          },
          itemCount: alphabet.length),
    );
  }
}
