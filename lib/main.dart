import 'package:flutter/material.dart';
import 'package:halalfarm/router/routers.dart';
import 'package:halalfarm/screens/homePages/animal_inner_page.dart';
import 'package:halalfarm/screens/homePages/home_page.dart';
import 'package:halalfarm/screens/splashScreen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily:"Zilla",
      ),
      home: const AnimalInnnerPage(),
      // initialRoute: "/",
      // onGenerateRoute: RouterHelper().OnGenerateRoute,
    );
  }
}
