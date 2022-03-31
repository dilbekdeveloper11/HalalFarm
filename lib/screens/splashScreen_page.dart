import 'package:flutter/material.dart';
import 'package:halalfarm/core/Colors.dart';
import 'package:halalfarm/core/container_decoration.dart';
import 'package:halalfarm/core/sizeconfig.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.pushNamed(context, "/language");
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ConstColors.color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: getH(314), left: getW(124)),
            child: Row(
              children: [
                Container(
                  height: getH(40.26),
                  width: getW(33.56),
                  decoration: Widgets.halalDecoration(
                    imagehalal: "assets/images/Vector.png",
                  ),
                ),
                SizedBox(width: getW(13)),
                Container(
                  height: getH(38.84),
                  width: getW(84.98),
                  decoration: Widgets.halalDecoration(
                    imagehalal: "assets/images/halalFarmYozuvi.png",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
