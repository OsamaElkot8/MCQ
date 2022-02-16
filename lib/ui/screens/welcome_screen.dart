import 'package:flutter/material.dart';
import 'package:mcq/main.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = 'WelcomeScreen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Text(appLocalizations(context).test),
      ),
    ));
  }
}
