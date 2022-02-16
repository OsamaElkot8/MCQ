import 'languages.dart';

class LanguageAr extends Languages {
  static final LanguageAr _singleton = LanguageAr._internal();
  factory LanguageAr() {
    return _singleton;
  }

  LanguageAr._internal();

  @override
  // TODO: implement welcomeBack
  String get welcomeBack => 'Welcome Back';

  @override
  // TODO: implement name
  String get name => 'Name';

  @override
  // TODO: implement start
  String get start => 'Start';

  @override
  // TODO: implement yourScoreIs
  String get yourScoreIs => 'Your Score Is';

  @override
  // TODO: implement of
  String get of => 'Of';

  @override
  // TODO: implement tryAgain
  String get tryAgain => 'Try Again';
}
