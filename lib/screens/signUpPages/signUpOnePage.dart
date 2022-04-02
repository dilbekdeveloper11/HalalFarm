import 'package:flutter/material.dart';
import 'package:halalfarm/core/container_decoration.dart';
import 'package:halalfarm/core/sizeconfig.dart';

class SignUpPageOne extends StatelessWidget {
  const SignUpPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xff058F1A).withOpacity(0.9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: getH(32.7), left: getW(315)),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/planpage");
              },
              child: Text(
                "Skip",
                style: TextStyle(fontSize: getH(18), color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: getH(16)),
          Container(
            height: getH(60),
            width: getW(200),
            decoration: Widgets.halalDecoration(
              imagehalal: "assets/images/halalfarmim.png",
            ),
          ),
          SizedBox(height: getH(80)),
          Padding(
            padding: EdgeInsets.only(left: getW(18)),
            child: Text(
              "Chorva hayvonlarini onlayn boqish",
              style: TextStyle(
                  fontSize: getH(32),
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getH(16),
              left: getW(18),
              right: getW(16),
            ),
            child: Text(
              "Xuddi “My Tom Cat” dagidek. Faqat haqiqiy hayvonlarni. Maqsad: musulmon aholini o’zi ishonadigan halol go’sht bilan ta’minlash",
              style: TextStyle(
                fontSize: getH(16),
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: getH(145)),
          Widgets.Buttoncontainer(
            text: "Ro'yxatdan o'tish",
            color: Colors.white,
            textColor: Colors.black,
            context: context,
            page: "signUpTwo",
          ),
          SizedBox(height: getH(30)),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/loginOne");
            },
            child: Text(
              "Akkauntga kirish",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: getH(17), color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
