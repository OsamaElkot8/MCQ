import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcq/main.dart';
import 'package:mcq/models/bloc/user_bloc/user_bloc.dart';
import 'package:mcq/models/bloc/user_bloc/user_bloc_state.dart';
import 'package:mcq/ui/components/custom_single_child_scroll_view.dart';
import 'package:mcq/ui/screens/mcq/mcq_screen.dart';
import 'package:mcq/ui/ui_constants.dart';
import 'package:mcq/ui/ui_helper.dart';

class MCQResultScreen extends StatelessWidget {
  static const id = 'mcq_result_screen';
  final List<bool> answers;
  const MCQResultScreen({Key? key, required this.answers}) : super(key: key);

  final EdgeInsetsGeometry _screenPadding = const EdgeInsets.all(20.0);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _screenOnWillPop,
      child: Scaffold(
        body: SafeArea(
          child: CustomSingleChildScrollView(
            padding: _screenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _userView(context),
                _scoreView(context),
                TextButton(
                    onPressed: () => _startAgainButtonOnPressed(context),
                    child: Text(appLocalizations(context).tryAgain))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _screenOnWillPop() async => false;

  Widget _userView(BuildContext context) {
    const double _profileImageCircleAvatarRadius = 50.0;
    const double _profileImageIconSize = 80.0;
    final ColorScheme _colorScheme = UIHelper.getColorScheme(context);
    final TextTheme _textTheme = UIHelper.getTextTheme(context);

    return BlocBuilder<UserBloc, UserBlocState>(
      builder: (context, state) {
        switch (state.runtimeType) {
          case UserIdle:
            return const SizedBox.shrink();
          case UserLoaded:
            final casted = state as UserLoaded;
            final _user = casted.user;

            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: _profileImageCircleAvatarRadius,
                  backgroundColor: _colorScheme.onSecondary,
                  child: Icon(
                    Icons.person,
                    color: _colorScheme.secondary,
                    size: _profileImageIconSize,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text(
                  _user.name,
                  style: _textTheme.headline2,
                )
              ],
            );
          case UserLoadingError:
          default:
            final casted = state as UserLoadingError;
            return Text(casted.reason!);
        }
      },
    );
  }

  Widget _scoreView(BuildContext context) {
    final TextTheme _textTheme = UIHelper.getTextTheme(context);
    final int _correctAnswersCount = answers.where((answer) => answer).length;
    final int _totalAnswersCount = answers.length;

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: appLocalizations(context).yourScoreIs +
            UiConstants.stringColonSymbol +
            UiConstants.stringNewLine,
        style: _textTheme.headline3,
        children: <TextSpan>[
          TextSpan(
              text: _correctAnswersCount.toString() +
                  UiConstants.stringSpace +
                  appLocalizations(context).of +
                  UiConstants.stringSpace +
                  _totalAnswersCount.toString(),
              style: _textTheme.headline4)
        ],
      ),
    );
  }

  _startAgainButtonOnPressed(BuildContext context) =>
      Navigator.pushReplacementNamed(context, MCQScreen.id);
}
