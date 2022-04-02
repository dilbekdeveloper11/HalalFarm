import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:halalfarm/core/container_decoration.dart';
import 'package:halalfarm/core/sizeconfig.dart';

class SignUpPageSeven extends StatelessWidget {
  const SignUpPageSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: getH(28.62)),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signUpTwo");
                  },
                  child: Text(
                    "X",
                    style: TextStyle(
                      fontSize: getH(18),
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: getH(31)),
          Text(
            "SMS dagi kodni kiriting",
            style: TextStyle(
              fontSize: getH(24),
              color: const Color(0xff0E130F),
            ),
          ),
          SizedBox(height: getH(8)),
          Text(
            "Kod ushbu raqamga yuborildi:",
            style: TextStyle(
              fontSize: getH(16),
              color: const Color(0xff959699),
            ),
          ),
          Text(
            "+998 93 378 39 85",
            style: TextStyle(
              fontSize: getH(16),
              color: const Color(0xff959699),
            ),
          ),
          SizedBox(height: getH(32)),
          Container(
            height: getH(58),
            width: getW(132),
            child: Image.asset("assets/images/CodeInput.png"),
          ),
          SizedBox(height: getH(41)),
           Text(
            "Kodni qayta yuborish",
            style: TextStyle(
              fontSize: getH(16),
              color:  Colors.blue,
            ),
          ),
          SizedBox(height: getH(270)),
          Widgets.Buttoncontainer(text: "Tasdiqlash",context: context,page: "planpage")
        ],
      ),
    );
  }
}
