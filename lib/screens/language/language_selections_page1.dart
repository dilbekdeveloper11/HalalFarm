import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halalfarm/core/container_decoration.dart';
import 'package:halalfarm/core/languageContainer.dart';
import 'package:halalfarm/core/sizeconfig.dart';
import 'package:halalfarm/screens/language/language_cubit.dart';
import 'package:halalfarm/screens/language/language_state.dart';

class LanguageSelectionsPage extends StatelessWidget {
  const LanguageSelectionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: getH(88), left: getW(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getH(40),
            width: getW(120),
            decoration:Widgets.halalDecoration(imagehalal: "assets/images/Group 1.png")
          ),
          SizedBox(height: getH(67)),
          Text(
            "Tilni Tanlang",
            style: TextStyle(
              fontSize: getW(28),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: getH(8)),
          Text(
            "Dasturni qaysi tilda ishlatishni xohlaysiz?",
            style: TextStyle(
              fontSize: getW(18),
              color: const Color(0xff565A57),
            ),
          ),
          SizedBox(height: getH(48)),
          LanguageContainer.languageContainer(
            funk: () {},
            imgPath: "assets/images/bayroq.jpg",
            title: "O’zbek tili",
            decoration: Widgets.decoration(
              topLeft: getH(20),
              topRight: getH(20),
              color: const Color(0xffF2F1F7),
            ),
          ),
          Container(
            width: getW(343),
            height: getH(1),
            color: Colors.black26,
          ),
          LanguageContainer.languageContainer(
            funk: () {},
            imgPath: "assets/images/angliya.png",
            title: "English",
            decoration: Widgets.decoration(
              bottomLeft: getH(20),
              bottomRight: getH(20),
              color: const Color(0xffF2F1F7),
            ),
          ),
          Container(
            width: getW(343),
            height: getH(1),
            color: Colors.black26,
          ),
          LanguageContainer.languageContainer(
            funk: () {},
            imgPath: "assets/images/rossiya.jpeg",
            title: "Русский язык",
            decoration: Widgets.decoration(
              bottomLeft: getH(20),
              bottomRight: getH(20),
              color: const Color(0xffF2F1F7),
            ),
          ),
          SizedBox(height: getH(64)),
          Widgets.Buttoncontainer(
            text: "Keyingisi",
            context: context,
            page: "onboardingone",
          )
        ],
      ),
    ));
  }
}
