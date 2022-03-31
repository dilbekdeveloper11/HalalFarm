abstract class LanguageState {
  LanguageState();
}

class LanguageInitial extends LanguageState {
  LanguageInitial();
}

class ChangeLanguage extends LanguageState {
  int indexButton;
  ChangeLanguage(this.indexButton);
}
