import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:halalfarm/screens/language/language_selections_page1.dart';
import 'package:halalfarm/screens/loginUpPages/loginInOnePage.dart';
import 'package:halalfarm/screens/onboardingpages/onboardingPageOne.dart';
import 'package:halalfarm/screens/planPages.dart/planPage.dart';
import 'package:halalfarm/screens/signUpPages/signUpOnePage.dart';
import 'package:halalfarm/screens/signUpPages/signUpSevenPage.dart';
import 'package:halalfarm/screens/signUpPages/signUpTwoPage.dart';
import 'package:halalfarm/screens/splashScreen_page.dart';

class RouterHelper {
  Route? OnGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: ((context) => const SplashScreenPage()));
      case "/language":
        return MaterialPageRoute(builder: ((context) =>  const LanguageSelectionsPage())); 
      case "/onboardingone":
        return MaterialPageRoute(builder: ((context) =>  const OnBoardingPageOne()));
      case "/signUpOne":
        return MaterialPageRoute(builder: ((context) =>  const SignUpPageOne()));
      case "/signUpTwo":
        return MaterialPageRoute(builder: ((context) =>  const SignUpPageTwo())); 
      case "/signUpSeven":
        return MaterialPageRoute(builder: ((context) =>  const SignUpPageSeven()));
      case "/loginOne":
        return MaterialPageRoute(builder: ((context) =>  const LoginPageOne()));
      case "/planpage":
        return MaterialPageRoute(builder: ((context) =>  const PlanPage())); 
    }
  }
}
// _ansora_o