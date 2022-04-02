import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:halalfarm/core/container_decoration.dart';
import 'package:halalfarm/core/sizeconfig.dart';

class PlanPage extends StatelessWidget {
  const PlanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        children: [
          SizedBox(height: getH(54.75)),
          Center(
            child: Container(
              height: getH(60),
              width: getW(200),
              decoration: Widgets.halalDecoration(
                imagehalal: "assets/images/Group 1.png",
              ),
            ),
          ),
          SizedBox(height: getH(39.91)),
          Text(
            "A’zolik tariflari",
            style: TextStyle(fontSize: getH(26), fontWeight: FontWeight.w600),
          ),
          SizedBox(height: getH(8)),
          Text(
            "Qaysi tarif sizga ma’qulroq?",
            style: TextStyle(
              fontSize: getH(16),
              color: const Color(0xff565A57),
            ),
          ),
          SizedBox(height: getH(40)),
          Container(
            height: getH(402),
            width: getW(359),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffFFFFFF),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getH(20)),
                Text(
                  "Oddiy",
                  style: TextStyle(
                    fontSize: getH(20),
                    color: const Color(0xff7719D6),
                  ),
                ),
                SizedBox(height: getH(8)),
                Text(
                  "Tekin",
                  style: TextStyle(
                    fontSize: getH(36),
                    color: const Color(0xff120949),
                  ),
                ),
                SizedBox(height: getH(8)),
                Text(
                  "Bu yerda bu tarif kimlarga mos tushishi haqida matn yozilgan bo’ladi",
                  style: TextStyle(
                    fontSize: getH(16),
                    color: const Color(0xff3E423F),
                  ),
                ),
                Container(
                  height: getH(220),
                  width: getW(320),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/circle-check15x.png"),
                              SizedBox(width: getW(15)),
                              SizedBox(
                                height: getH(48),
                                width: getW(283),
                                child: AutoSizeText(
                                  "Hayvon yetilgandan so’ng yetkazib berish",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: getH(16),
                                    color: const Color(0xff262B27),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: getH(8)),
                        ],
                      );
                    },
                    itemCount: 4,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
