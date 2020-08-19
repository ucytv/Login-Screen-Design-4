import 'package:flutter/material.dart';

class LoginButtons extends StatelessWidget {
  final String buttonText;
  final Color buttonColor, textColor;
  final double buttonRadius;

  //final Widget buttonIcon;
  final VoidCallback buttonClick;

  const LoginButtons(
      {Key key,
      @required this.buttonText,
      this.buttonColor: Colors.black,
      this.textColor: Colors.white,
      this.buttonRadius: 10,
      //this.buttonIcon,
      this.buttonClick})
      : assert(buttonText != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: SizedBox(
        height: 45,
        child: RaisedButton(
          onPressed: buttonClick,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(buttonRadius),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //buttonIcon !=null ? buttonIcon : Container(),
              Text(
                buttonText,
                style: TextStyle(color: textColor, fontSize: 13),
              ),
            ],
          ),
          color: buttonColor,
        ),
      ),
    );
  }
}
