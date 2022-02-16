import 'package:flutter/material.dart';
import 'package:mcq/ui/components/custom_single_child_scroll_view.dart';

class MCQResultScreen extends StatelessWidget {
  final List<bool> answers;
  const MCQResultScreen({Key? key, required this.answers}) : super(key: key);

  final EdgeInsetsGeometry _screenPadding = const EdgeInsets.all(20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: CustomSingleChildScrollView(
        padding: _screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    ));
  }
}
