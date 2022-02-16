import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcq/models/bloc/user_bloc/user_bloc.dart';
import 'package:mcq/models/bloc/user_bloc/user_bloc_state.dart';
import 'package:mcq/repository/local/dummy/question_brain.dart';
import 'package:mcq/ui/components/custom_single_child_scroll_view.dart';
import 'package:mcq/ui/screens/mcq/mcq_result_screen.dart';
import 'package:mcq/ui/ui_helper.dart';

class MCQScreen extends StatefulWidget {
  static const id = 'mcq_screen';
  const MCQScreen({Key? key}) : super(key: key);

  @override
  State<MCQScreen> createState() => _MCQScreenState();
}

class _MCQScreenState extends State<MCQScreen> {
  final EdgeInsetsGeometry _screenPadding = const EdgeInsets.all(20.0);

  late QuestionBrain _dummy;
  final List<bool> _answers = [];

  _initializeDummyData() => _dummy = QuestionBrain();

  @override
  void initState() {
    _initializeDummyData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(context),
        body: SafeArea(
          child: CustomSingleChildScrollView(
            padding: _screenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: _questionView(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                _choicesView(context)
              ],
            ),
          ),
        ));
  }

  AppBar _appBar(BuildContext context) {
    const bool _appBarCenterTitle = false;
    const double _profileImageCircleAvatarRadius = 20.0;
    final ColorScheme _colorScheme = UIHelper.getColorScheme(context);

    return AppBar(
      centerTitle: _appBarCenterTitle,
      title: BlocBuilder<UserBloc, UserBlocState>(
        builder: (context, state) {
          switch (state.runtimeType) {
            case UserIdle:
              return const SizedBox.shrink();
            case UserLoaded:
              final casted = state as UserLoaded;
              final _user = casted.user;

              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: _profileImageCircleAvatarRadius,
                    backgroundColor: _colorScheme.background,
                    child: Icon(
                      Icons.person,
                      color: _colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Text(
                      _user.name,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              );
            case UserLoadingError:
            default:
              final casted = state as UserLoadingError;
              return Text(casted.reason!);
          }
        },
      ),
    );
  }

  Widget _questionView() => Text(
        _dummy.question,
        textAlign: TextAlign.center,
      );

  Widget _choicesView(BuildContext context) {
    final List<String> _choices = _dummy.choices;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: _choices.map((choice) {
        const EdgeInsets _buttonPadding = EdgeInsets.symmetric(vertical: 10.0);

        return Padding(
          padding: _buttonPadding,
          child: OutlinedButton(
            onPressed: () =>
                _singleChoiceButtonOnPressed(context, singleChoice: choice),
            child: Text(choice),
          ),
        );
      }).toList(),
    );
  }

  _singleChoiceButtonOnPressed(BuildContext context,
      {required String singleChoice}) {
    final String _correctAnswer = _dummy.correctAnswer;
    final bool _isTheCorrectAnswer = singleChoice == _correctAnswer;

    _answers.add(_isTheCorrectAnswer);

    if (_dummy.isLastQuestion) {
      Navigator.pushReplacementNamed(context, MCQResultScreen.id,
          arguments: _answers);
    } else {
      setState(() => _dummy.nextQuestion());
    }
  }
}
