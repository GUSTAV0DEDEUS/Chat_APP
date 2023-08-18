import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/data/DUMMY_DATA.dart';
import 'package:my_app/models/person.dart';

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
        separatorBuilder: (context, index) => const SizedBox(height: 12,),
          itemBuilder: (context, index) {
        List<Person> items = persons
                .where((item) =>
                    item.name.startsWith(alphabet[index].toUpperCase()))
                .toList();
            return items.isNotEmpty
                ? ListTile(
                    leading: Text(
                      alphabet[index],
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    minLeadingWidth: 40,
                    title: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (_, index) {
                          return Row(
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
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          );
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox(
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