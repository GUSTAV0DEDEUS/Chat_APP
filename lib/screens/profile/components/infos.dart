import 'package:flutter/material.dart';
import 'package:my_app/utils/font.dart';

class Infos extends StatelessWidget {
  const Infos({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      width: width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.white,
      ),
      child: Center(
        child: Container(
            width: width * .8,
            decoration: const BoxDecoration(
              borderRadius: BorderRadiusDirectional.all(Radius.circular(15)),
              color: Colors.white70,
            ),
            child: Text(
              '🌟 Explorando o mundo com olhos curiosos 🌍✨\n📸 Capturando momentos e compartilhando histórias 📷📖\n🎓 TI\n📍 Itapevi/SP\n🌱 Aprendendo, crescendo e sempre sorrindo!\n💌 Contato: gdedeus60@gmail.com\n#Viagens #Fotografia #Aventuras',
              style: font(Colors.black, FontWeight.w400, 1.7).titleSmall,
            )),
      ),
    );
  }
}
