import 'package:flutter/material.dart';
import 'package:mcq/ui/ui_helper.dart';

class DefaultTextField extends StatelessWidget {
  final String? label;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final String? hintText;
  const DefaultTextField(
      {Key? key, this.label, this.controller, this.prefixIcon, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InputDecorationTheme _inputDecorationTheme =
        UIHelper.getInputDecorationTheme(context);
    final TextTheme _textTheme = UIHelper.getTextTheme(context);

    return TextField(
      controller: controller,
      style: _textTheme.bodyText2,
      decoration: InputDecoration(
          border: _inputDecorationTheme.border,
          focusedBorder: _inputDecorationTheme.focusedBorder,
          labelText: label,
          labelStyle: _textTheme.headline2,
          prefixIcon: prefixIcon,
          prefixIconColor: UIHelper.getColorScheme(context).secondary,
          hintText: hintText,
          hintStyle: _inputDecorationTheme.hintStyle),
    );
  }
}
