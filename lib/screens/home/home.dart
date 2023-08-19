import 'package:flutter/material.dart';
import 'package:my_app/components/bottom_Bar.dart';
import 'package:my_app/components/button.dart';
import 'package:my_app/data/DUMMY_DATA.dart';
import 'package:my_app/screens/home/components/avatar_list.dart';
import 'package:my_app/screens/home/components/message_list.dart';
import 'package:my_app/utils/font.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double paddind = MediaQuery.of(context).viewPadding.top;
    double height = MediaQuery.of(context).size.height - (paddind + 12);
    double width = MediaQuery.of(context).size.width - 24;

    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: Container(
          width: width * 1,
          height: height * 1,
          margin:
              EdgeInsets.only(top: paddind, left: 12, right: 12, bottom: 12),
          child: Column(
            children: [
              SizedBox(
                height: height * .1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Chats',
                        style: font(Colors.black,FontWeight.w700).headlineMedium),
                    const Button(),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: height * 0.14,
                  width: width * 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 84, child: AvatarList(persons: persons)),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                    height: height * 0.76,
                    child: MessageList(persons: persons)),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomBar());
  }



}
