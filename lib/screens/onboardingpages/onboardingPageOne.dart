import 'package:flutter/material.dart';
import 'package:halalfarm/core/container_decoration.dart';
import 'package:halalfarm/core/sizeconfig.dart';

class OnBoardingPageOne extends StatelessWidget {
  const OnBoardingPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: getH(400),
            width: getW(375),
            decoration: Widgets.imagedecoration(
              bottomLeft: 40,
              imageUrl: "assets/images/sigir.png",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getH(32),
              left: getW(16),
              right: getW(16),
            ),
            child: const Text(
              "Sevimli hayvonlaringizni onlayn sotib oling",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: getH(37)),
          Center(
            child: Image.asset("assets/images/nuqtalar1.png"),
          ),
          SizedBox(height: getH(55)),
          Widgets.Buttoncontainer(
            text: "Keyingisi",
            page: "signUpOne",
            context: context,
          ),
        ],
      ),
    );
  }
}
