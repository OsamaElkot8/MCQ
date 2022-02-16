import 'languages.dart';

class LanguageEn extends Languages {
  static final LanguageEn _singleton = LanguageEn._internal();
  factory LanguageEn() {
    return _singleton;
  }

  LanguageEn._internal();

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
