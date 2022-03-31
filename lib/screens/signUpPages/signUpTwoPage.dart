import 'package:flutter/material.dart';
import 'package:halalfarm/core/container_decoration.dart';
import 'package:halalfarm/core/sizeconfig.dart';

class SignUpPageTwo extends StatelessWidget {
  const SignUpPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getH(28.62),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signUpOne");
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "Ortga",
                  style: TextStyle(fontSize: getH(17), color: Colors.blue),
                ),
                SizedBox(width: getW(40.5)),
                Text(
                  "Ro’yxatdan o’tish",
                  style: TextStyle(fontSize: getH(18), color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(height: getH(38)),
          Container(
            width: getW(343),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: Widgets.formFieldDecoration(
                hintText: "To’liq ism-familiyangiz",
              ),
            ),
          ),
          SizedBox(height: getH(41)),
          Container(
            width: getW(343),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: Widgets.formFieldDecoration(
                hintText: "Tug’ilgan sanangiz",
              ),
            ),
          ),
          SizedBox(height: getH(41)),
          Container(
            width: getW(343),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: Widgets.formFieldDecoration(
                hintText: "Telefon raqamingiz",
              ),
            ),
          ),
          SizedBox(height: getH(55)),
          Row(
            children: [
              const Text(
                "------------------",
                style: TextStyle(color: Color(0xffCFD0CF)),
              ),
              SizedBox(width: getW(16)),
              Text(
                "Ijtimoiy tarmoqlar orqali",
                style: TextStyle(fontSize: getH(15), color: Color(0xff6E716F)),
              ),
              SizedBox(width: getW(16)),
              const Text(
                "-----------------",
                style: TextStyle(color: Color(0xffCFD0CF)),
              ),
            ],
          ),
          SizedBox(height: getH(24)),
          Widgets.tarmoqContainer(
            height: 56,
            width: 343,
            assetImage: "assets/images/googlim.png",
            text: "Google",
          ),
          Padding(
            padding: EdgeInsets.only(top: getH(12), left: getW(16)),
            child: Row(
              children: [
                Widgets.tarmoqContainer(
                  height: 56,
                  width: 166,
                  assetImage: "assets/images/apple.png",
                  text: "Apple",
                ),
                SizedBox(width: getW(12)),
                Widgets.tarmoqContainer(
                  height: 56,
                  width: 166,
                  assetImage: "assets/images/facebook.png",
                  text: "Facebbok",
                )
              ],
            ),
          ),
          SizedBox(height: getH(29)),
          Widgets.Buttoncontainer(
            text: "Keyingisi",
            color: const Color(0xffCFD0CF),
            context: context,
            page: "signUpSeven"
          ),
        ],
      ),
    );
  }
}
