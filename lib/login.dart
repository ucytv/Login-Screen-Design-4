import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common/login_buttons.dart';
import 'package:flutter_app/common/login_edittexts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Container(
        margin: EdgeInsets.only(top: 100, left: 60, right: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "HEY TAXI!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 12,
            ),
            Image(
              image: AssetImage("images/taxi_6.png"),
              height: 80,
            ),
            SizedBox(
              height: 24,
            ),
            LoginEditTexts(
              labelText: "Username",
              suffixIcon: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            LoginEditTexts(
              labelText: "Password",
              obscure: true,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(
                    activeColor: Colors.black,
                    checkColor: Colors.white,
                    value: true,
                  ),
                  Text(
                    "Remember Me",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            LoginButtons(
              buttonClick: () {},
              //buttonIcon: Image.asset("image/soccer.png"),
              buttonColor: Colors.black,
              buttonText: "LOGIN",
            ),
            LoginButtons(
              buttonClick: () {},
              buttonText: "Forgot my password",
              textColor: Colors.white,
              buttonColor: Colors.black54,
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account yet?",
                  style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
