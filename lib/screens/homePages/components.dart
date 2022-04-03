import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:halalfarm/core/container_decoration.dart';
import 'package:halalfarm/core/sizeconfig.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Components {
  static indicator({
    required String text,
    required double percent,
    required String imageUrl,
  }) {
    return Row(
      children: [
        CircleAvatar(
          radius: getH(20),
          backgroundImage: AssetImage(
            imageUrl,
          ),
        ),
        SizedBox(width: getW(10)),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: getH(18),
                color: Colors.black,
              ),
            ),
            SizedBox(height: getH(16)),
            LinearPercentIndicator(
              width: 152.0,
              lineHeight: 15.0,
              barRadius: Radius.circular(getH(10)),
              percent: percent,
              backgroundColor: Colors.grey,
              progressColor: Colors.green,
            ),
          ],
        ),
      ],
    );
  }

  static MyAnimals() {
    return Container(
      color: Color(0xffF2F1F7),
      child: Padding(
        padding: EdgeInsets.only(top: getH(10), left: getW(8), right: getW(8)),
        child: Container(
          height: getH(687),
          width: getW(359),
          decoration: Widgets.decoration(
            color: Colors.white,
            topLeft: 20,
            topRight: 20,
            bottomRight: 20,
            bottomLeft: 20,
          ),
          child: Padding(
            padding: EdgeInsets.only(top: getH(24)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: getW(80)),
                        child: Text(
                          "1. Denov oti (№254)",
                          style: TextStyle(
                            fontSize: getH(24),
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: getH(16)),
                      Container(
                        height: getH(194),
                        width: getW(319),
                        decoration: Widgets.imagedecoration(
                          topLeft: 8,
                          topRight: 8,
                          bottomLeft: 8,
                          bottomRight: 8,
                          imageUrl: "assets/images/animal pic.png",
                        ),
                      ),
                      SizedBox(height: getH(14)),
                      Visibility(
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
                      SizedBox(height: getH(16)),
                      Widgets.Buttoncontainer(
                        bordercolor: Colors.black,
                        color: Colors.white,
                        text: "Sotib Olish",
                        textColor: Colors.black,
                      ),
                      SizedBox(height: getH(27.5)),
                      Text(
                        "Yetilish ko’rsatkichi",
                        style: TextStyle(
                          fontSize: getH(18),
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: getH(10)),
                      Container(
                        height: getH(35),
                        width: getW(179),
                        child: Text(
                          "Taxminiy yetilish sanasi: 22-aprel, 2022-yil",
                          style: TextStyle(
                            fontSize: getH(14),
                            color: const Color(0xff6E716F),
                          ),
                        ),
                      ),
                      SizedBox(height: getH(20)),
                      Text(
                        "Yemishlari(2)",
                        style: TextStyle(
                          fontSize: getH(18),
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: getH(13)),
                      Components.indicator(
                        text: "Beda (58%)",
                        percent: 0.5,
                        imageUrl: "assets/images/Ellipse 4.png",
                      ),
                      SizedBox(height: getH(20)),
                      Components.indicator(
                        text: "Bug’doy (8%)",
                        percent: 0.3,
                        imageUrl: "assets/images/Ellipse bugdoy.png",
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: getH(175),
                  left: getW(55),
                  child: Container(
                    height: getH(44),
                    width: getW(230),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(
                        getW(50),
                      ),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      title: Text(
                        "Muhim bildirishnoma",
                        style: TextStyle(
                          fontSize: getW(16),
                          color: Colors.red,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_downward_rounded,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: getW(253),
                  top: getH(420),
                  child: Container(
                    height: getH(74),
                    width: getW(100),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getH(12),
                      ),
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xffCFD0CF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static chooseAnimals() {
    return Container(
      color: const Color(0xffF2F1F7),
      child: Padding(
        padding: EdgeInsets.only(top: getH(10), left: getW(8), right: getW(8)),
        child: Container(
          height: getH(30),
          width: getW(359),
          decoration: Widgets.decoration(
            color: Colors.white,
            topLeft: 20,
            topRight: 20,
            bottomRight: 20,
            bottomLeft: 20,
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getH(278),
                    width: getW(359),
                    decoration: Widgets.imagedecoration(
                      topLeft: 20,
                      topRight: 20,
                      imageUrl: "assets/images/ot.png",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: getH(20), left: getW(20)),
                    child: Text(
                      "Qorabayir toy · 3 oylik",
                      style: TextStyle(
                        fontSize: getH(16),
                        color: Color(0xff3E423F),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: getH(10), left: getW(20)),
                    child: Row(
                      children: [
                        Text(
                          "3 250 000",
                          style: TextStyle(
                            fontSize: getH(26),
                          ),
                        ),
                        SizedBox(width: getW(8)),
                        Text(
                          "so'm",
                          style: TextStyle(
                            fontSize: getH(18),
                            color: Color(0xff3E423F),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                top: getH(228),
                left: getW(16),
                child: Container(
                  height: getH(34),
                  width: getW(113),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff000000).withOpacity(0.5),
                  ),
                  child: Center(
                    child: Text(
                      "Boqish uchun",
                      style: TextStyle(
                        fontSize: getH(15),
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
