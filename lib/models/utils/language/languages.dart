abstract class Languages {
  String get welcomeBack;
  String get name;
  String get start;
  String get yourScoreIs;
  String get of;
  String get tryAgain;
}

enum EnumLanguage { english, arabic }

extension ExtensionEnumLanguage on EnumLanguage {
  String localeValue() {
    switch (this) {
      case EnumLanguage.arabic:
        return 'ar';
      default:
        return 'en';
    }
  }
}
