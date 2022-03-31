import 'package:flutter/material.dart';
import 'package:halalfarm/core/sizeconfig.dart';

class Widgets {
  static Decoration imagedecoration(
      {String? imageUrl,
      double? radius,
      double topLeft = 0,
      double topRight = 0,
      double bottomLeft = 0,
      double bottomRight = 0,
      Color? color}) {
    return BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight),
      ),
      color: color,
      image:
          DecorationImage(image: AssetImage(imageUrl ?? ""), fit: BoxFit.cover),
    );
  }

  static Decoration decoration(
      {double? radius,
      double topLeft = 0,
      double topRight = 0,
      double bottomLeft = 0,
      double bottomRight = 0,
      Color? color}) {
    return BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight),
      ),
      color: color,
    );
  }

  static Buttoncontainer({
    String text = "",
    BuildContext? context,
    String? page,
    Color? color,
    Color? textColor,
  }) {
    return InkWell(
      child: Container(
          height: getH(56),
          width: getW(343),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: getH(17), color:textColor ?? Colors.white),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color ??  Color(0xff058F1A),
          )),
      onTap: () {
        Navigator.pushNamed(context!, "/${page}");
      },
    );
  }

  static Decoration halalDecoration({required String imagehalal}) {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagehalal),
      ),
    );
  }
}
