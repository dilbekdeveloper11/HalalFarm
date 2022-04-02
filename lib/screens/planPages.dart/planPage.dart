import 'dart:ui';

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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            toolbarHeight: getH(202),
            flexibleSpace: FlexibleSpaceBar(
              
              background: Column(
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
                    style: TextStyle(
                        fontSize: getH(26), fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: getH(8)),
                  Text(
                    "Qaysi tarif sizga ma’qulroq?",
                    style: TextStyle(
                      fontSize: getH(16),
                      color: const Color(0xff565A57),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [
                    SizedBox(height: getH(40)),
                    Container(
                      height: getH(452),
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
                              physics: ScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: getH(15),
                                          backgroundImage: const AssetImage(
                                            "assets/images/circle-check15x.png",
                                          ),
                                        ),
                                        SizedBox(width: getW(12)),
                                        Container(
                                          height: getH(48),
                                          width: getW(271),
                                          child: Text(
                                            "Istalgan paytda hayvonni onlayn sotuvga qo’yish",
                                            style: TextStyle(
                                              fontSize: getH(16),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    
                                  ],
                                );
                              },itemCount: 4,
                            ),
                          ),
                          Widgets.Buttoncontainer(text: "Tanlash",color: const Color(0xff3E423F),context: context,page: "")
                        ],
                      ),
                    ),
                  ],
                );
              },
              childCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
