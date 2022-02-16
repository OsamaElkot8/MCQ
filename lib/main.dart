import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mcq/models/bloc/settings_bloc/local_settings_bloc.dart';
import 'package:mcq/models/bloc/settings_bloc/local_settings_bloc_state.dart';
import 'package:mcq/models/bloc/user_bloc/user_bloc.dart';
import 'package:mcq/models/utils/language/languages.dart';
import 'package:mcq/models/utils/localizations/locales_constants.dart';
import 'package:mcq/models/utils/localizations/localizations_delegate.dart';
import 'package:mcq/models/utils/themes/theme_dark.dart';
import 'package:mcq/models/utils/themes/theme_light.dart';
import 'package:mcq/ui/screens/mcq/mcq_result_screen.dart';
import 'package:mcq/ui/screens/mcq/mcq_screen.dart';
import 'package:mcq/ui/screens/welcome_screen.dart';
import 'package:mcq/ui/ui_constants.dart';

final GlobalKey<NavigatorState> navigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "Main Navigator");

Languages appLocalizations(context) => Localizations.of(context, Languages);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  _setDefaultStatusBarColor(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: UiConstants.colorPrimary,
      statusBarIconBrightness: Brightness.light, // For Android (light icons)
      statusBarBrightness: Brightness.dark, // For iOS (light icons)
    ));
  }

  @override
  Widget build(BuildContext context) {
    _setDefaultStatusBarColor(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocalSettingsBloc>(
          create: (ctx) => LocalSettingsBloc(),
        ),
        BlocProvider<UserBloc>(
          create: (ctx) => UserBloc(),
        )
      ],
      child: BlocBuilder<LocalSettingsBloc, LocalSettingsBlocState>(
          builder: (context, state) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          title: 'MCQ',
          debugShowCheckedModeBanner: false,
          themeMode: state.settings!.theme,
          theme: lightTheme,
          darkTheme: darkTheme,
          supportedLocales: LocalesConstants.supportedLocales,
          localizationsDelegates: const [
            AppLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
          ],
          locale: state.settings!.locale,
          initialRoute: WelcomeScreen.id,
          routes: {
            WelcomeScreen.id: (context) => const WelcomeScreen(),
            MCQScreen.id: (context) => const MCQScreen()
          },
          onGenerateRoute: _getRoute,
        );
      }),
    );
  }

  Route<dynamic>? _getRoute(RouteSettings settings) {
    if (settings.name == MCQResultScreen.id) {
      return _buildRoute(
        settings,
        MCQResultScreen(
          answers: settings.arguments as List<bool>,
        ),
      );
    }

    return null;
  }

  MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      builder: (ctx) => builder,
    );
  }
}
