import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcq/main.dart';
import 'package:mcq/models/bloc/user_bloc/user_bloc.dart';
import 'package:mcq/models/bloc/user_bloc/user_bloc_event.dart';
import 'package:mcq/models/entities/user/user.dart';
import 'package:mcq/ui/components/custom_single_child_scroll_view.dart';
import 'package:mcq/ui/components/default_textfield.dart';
import 'package:mcq/ui/screens/mcq/mcq_screen.dart';
import 'package:mcq/ui/ui_constants.dart';
import 'package:mcq/ui/ui_helper.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = 'welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final EdgeInsetsGeometry _screenPadding = const EdgeInsets.all(20.0);

  final TextEditingController _nameController = TextEditingController();
  bool _isStartButtonEnabled = false;

  @override
  void initState() {
    _initializeNameControllerListener();
    super.initState();
  }

  _initializeNameControllerListener() {
    _nameController.addListener(() {
      final bool _isStartButtonEnabled = _nameController.text.isNotEmpty;
      setState(() => this._isStartButtonEnabled = _isStartButtonEnabled);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: CustomSingleChildScrollView(
        padding: _screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _welcomeMessageView(context),
            const SizedBox(
              height: 50.0,
            ),
            DefaultTextField(
              controller: _nameController,
              prefixIcon: const Icon(Icons.person),
              hintText: appLocalizations(context).name,
            ),
            const SizedBox(
              height: 50.0,
            ),
            TextButton(
                onPressed: _isStartButtonEnabled
                    ? () => _startButtonOnPressed(context)
                    : null,
                child: Text(appLocalizations(context).start)),
            const SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    ));
  }

  Widget _welcomeMessageView(BuildContext context) {
    final TextTheme _textTheme = UIHelper.getTextTheme(context);
    const double _columnHeight = 110.0;
    const bool _animatedTextIsRepeatingAnimation = false;

    return SizedBox(
      height: _columnHeight,
      child: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
                appLocalizations(context).welcomeBack +
                    UiConstants.stringExclamationMark,
                textStyle: _textTheme.headline2)
          ],
          isRepeatingAnimation: _animatedTextIsRepeatingAnimation,
        ),
      ),
    );
  }

  _startButtonOnPressed(BuildContext context) {
    String _name = _nameController.text;
    User _user = User(name: _name);

    _updateUserData(user: _user);

    Navigator.pushNamed(context, MCQScreen.id);
  }

  _updateUserData({required User user}) {
    final _userBloc = context.read<UserBloc>();
    // setting updated user data
    _userBloc.add(UserEdit(user));
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
