import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halalfarm/core/container_decoration.dart';
import 'package:halalfarm/core/sizeconfig.dart';
import 'package:svg_icon/svg_icon.dart';

class AnimalInnnerPage extends StatelessWidget {
  const AnimalInnnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: getH(350),
            width: getW(375),
            decoration: Widgets.imagedecoration(
              imageUrl: "assets/images/oq ot.png",
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: getH(40),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                      SizedBox(width: getW(8)),
                      Text(
                        "Ortga",
                        style: TextStyle(
                          fontSize: getH(17),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: getW(35)),
                      Text(
                        "Denov oti (№254)",
                        style: TextStyle(
                          fontSize: getH(19),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: getW(30)),
                      SvgIcon(
                        "assets/images/Vector.svg",
                        color: Colors.white,
                        height: getH(18),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getH(16), left: getW(16)),
            child: Visibility(
              visible: true,
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.red,
                    size: getH(25),
                  ),
                  SizedBox(width: getW(12)),
                  Container(
                    height: getH(46),
                    width: getW(287),
                    child: AutoSizeText(
                      "Qo’ylar orasida oq mushak kasalligi tarqayapti.",
                      style: TextStyle(
                        fontSize: getH(18),
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getH(16),
              left: getW(10),
            ),
            child: Widgets.Buttoncontainer(
              text: "Dori sotib olish",
              textColor: Colors.black,
              color: Colors.white,
              bordercolor: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getH(16),
              left: getW(10),
            ),
            child: Container(
              height: getH(47),
              width: getW(101),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: const Color(0xffF6F6F6),
              ),
            ),
          )
        ],
      ),
    );
  }
}
