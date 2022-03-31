import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halalfarm/screens/language/language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());

  int value = 0;
  List tapped = [false, false, false];
  void changeLanguage() {
    
    if (value == 0) {
      tapped[value] = true;
      tapped[1] = false;
      tapped[2] = false;
      print("Ozbek tili");
    } else if (value == 1) {
      tapped[value] = true;
      tapped[0] = false;
      tapped[2] = false;
      print("Ingliz tili");
    } else {
      tapped[value] = true;
      tapped[0] = false;
      tapped[1] = false;
      print("Rus tili");
    }
    emit(ChangeLanguage(tapped[value]));
  }
}
