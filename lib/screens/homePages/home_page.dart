import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:halalfarm/core/container_decoration.dart';
import 'package:halalfarm/core/sizeconfig.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xff058F1A),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xff058F1A),
            toolbarHeight: getH(253),
            flexibleSpace: Padding(
              padding: EdgeInsets.only(top: getH(56)),
              child: Column(
                children: [
                  Container(
                    height: getH(50),
                    width: getW(150),
                    decoration: Widgets.halalDecoration(
                      imagehalal: "assets/images/halalfarmim.png",
                    ),
                  ),
                  SizedBox(height: getH(27)),
                  Text(
                    "Balansingiz",
                    style: TextStyle(
                      fontSize: getH(16),
                      color: Color(0xffCDE9D1),
                    ),
                  ),
                  SizedBox(height: getH(7)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/circle-plus.png"),
                      SizedBox(width: getW(13)),
                      Text(
                        "450 000 so'm",
                        style: TextStyle(
                          fontSize: getW(28),
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getH(8)),
                  Text(
                    'Hisobni to’ldirish uchun ID: 255 584 789',
                    style: TextStyle(
                      fontSize: getH(16),
                      color: Color(0xffCDE9D1),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: getH(900),
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Color(0xffF2F1F7),
              ),
              child: Column(
                children: [
                  SizedBox(height: getH(24)),
                  Text(
                    "Mening hayvonlarim (2)",
                    style: TextStyle(fontSize: getH(24), color: Colors.black),
                  ),
                  SizedBox(height: getH(24)),
                  Container(
                    height: getH(607),
                    width: getW(359),
                    decoration: Widgets.decoration(
                        topLeft: 16,
                        topRight: 16,
                        bottomLeft: 16,
                        color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.only(top: getH(24)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
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
                                    child: Row(
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.red,
                                      size: getH(25),
                                    ),
                                    SizedBox(width: getW(12)),
                                    AutoSizeText(
                                      "Qo’ylar orasida oq mushak kasalligi tarqayapti.",
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: getH(17),
                                          color: Colors.red),
                                    )
                                  ],
                                ))
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
