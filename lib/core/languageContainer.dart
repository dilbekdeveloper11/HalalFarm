import 'package:flutter/material.dart';
import 'package:halalfarm/core/sizeconfig.dart';

class LanguageContainer {
  static InkWell languageContainer(
      {required String imgPath,
      required Function() funk,
      required String title,
      required Decoration decoration}) {
    return InkWell(
      child: Container(
        height: getH(80),
        width: getW(343),
        decoration: decoration,
        child: Padding(
          padding: EdgeInsets.only(top: getH(20)),
          child: ListTile(
            leading: CircleAvatar(
              radius: getW(40),
              backgroundImage: AssetImage(imgPath),
            ),
            title: Text(
              title,
              style: TextStyle(
                fontSize: getH(20),
              ),
            ),
            trailing: const Icon(
              Icons.check,
              color: Color(0xffF2F1F7),
            ),
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
