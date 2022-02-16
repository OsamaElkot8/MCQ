import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcq/models/bloc/user_bloc/user_bloc.dart';
import 'package:mcq/models/bloc/user_bloc/user_bloc_state.dart';
import 'package:mcq/repository/local/dummy/question_brain.dart';
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
          child: Padding(
            padding: _screenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: _questionView(),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                _choicesView()
              ],
            ),
          ),
        ));
  }

  AppBar _appBar(BuildContext context) {
    const EdgeInsetsGeometry _profileImageCircleAvatarPadding =
        EdgeInsets.all(8.0);
    const double _appBarTitleSpacing = 0.0;
    const double _profileImageCircleAvatarRadius = 20.0;
    final ColorScheme _colorScheme = UIHelper.getColorScheme(context);

    return AppBar(
      title: BlocBuilder<UserBloc, UserBlocState>(
        builder: (context, state) {
          switch (state.runtimeType) {
            case UserIdle:
              return const SizedBox.shrink();
            case UserLoaded:
              final casted = state as UserLoaded;
              final _user = casted.user;

              return Text(_user.name);
            case UserLoadingError:
            default:
              final casted = state as UserLoadingError;
              return Text(casted.reason!);
          }
        },
      ),
      titleSpacing: _appBarTitleSpacing,
      leading: Padding(
        padding: _profileImageCircleAvatarPadding,
        child: CircleAvatar(
          radius: _profileImageCircleAvatarRadius,
          backgroundColor: _colorScheme.background,
          child: Icon(
            Icons.person,
            color: _colorScheme.secondary,
          ),
        ),
      ),
    );
  }

  Widget _questionView() => Text(
        _dummy.question,
        textAlign: TextAlign.center,
      );

  Widget _choicesView() {
    const bool _listViewShrinkWrap = true;
    final List<String> _choices = _dummy.choices;
    final String _correctAnswer = _dummy.correctAnswer;

    return ListView.separated(
        shrinkWrap: _listViewShrinkWrap,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (ctx, index) {
          final String _singleChoice = _choices[index];

          return OutlinedButton(
              onPressed: () {
                final bool _isTheCorrectAnswer =
                    _singleChoice == _correctAnswer;
                setState(() {
                  _dummy.nextQuestion();
                  _answers.add(_isTheCorrectAnswer);
                });
              },
              child: Text(_singleChoice));
        },
        separatorBuilder: (ctx, index) => const SizedBox(
              height: 20.0,
            ),
        itemCount: _choices.length);
  }
}
