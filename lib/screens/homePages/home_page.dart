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
              child: Column(children: [ ],),
            ),
          )
        ],
      ),
    );
  }
}
