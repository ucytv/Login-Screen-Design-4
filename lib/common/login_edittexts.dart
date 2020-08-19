import 'package:flutter/material.dart';

class LoginEditTexts extends StatelessWidget {
  final Color cursorColor, borderColor, focusedColor;
  final double paddingValue, borderRadius, focusedRadius;
  final String labelText;
  final Widget suffixIcon;
  final bool obscure;
  final Color suffixColor;

  const LoginEditTexts(
      {Key key,
      this.cursorColor: Colors.black,
      this.borderColor: Colors.black,
      this.focusedColor: Colors.black,
      this.paddingValue: 12,
      this.borderRadius: 10,
      this.focusedRadius: 16,
      @required this.labelText,
      this.suffixIcon,
      this.obscure: false,
      this.suffixColor})
      : assert(labelText != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 13),
      obscureText: obscure,
      cursorColor: cursorColor,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelStyle: Theme.of(context).textTheme.bodyText1,
        contentPadding: EdgeInsets.all(paddingValue),
        isDense: true,
        labelText: labelText,
        border: OutlineInputBorder(
          gapPadding: 8,
          borderSide: BorderSide(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: focusedColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(focusedRadius)),
        ),
      ),
    );
  }
}
