import 'dart:convert';
import 'package:flutter_ecommerce_app/Api/LoginApi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ecommerce_app/components/AppSingUp.dart';
import 'package:flutter_ecommerce_app/utils/Urls.dart';
import 'package:http/http.dart' as http;

class AppSignIn extends StatefulWidget {
  @override
  _AppSignInState createState() => _AppSignInState();
}

class _AppSignInState extends State<AppSignIn> {
  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;
    final login = LoginApi();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: InkWell(
                child: Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.close),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Flexible(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 130,
                    height: 130,
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/ic_app_icon.png"),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                  padding: EdgeInsets.all(17.0),
                  onPressed: () {
                    //TODO: logic for check email and password
                    setState(() {
                      login.loginWithFacebook();
                      print('smart prog');
                    });
                  },
                  child: Text(
                    "Sign In With Facebook",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins-Medium.ttf',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.indigo[600])),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Flexible(
              flex: 5,
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                  padding: EdgeInsets.all(17.0),
                  onPressed: () {
                    //TODO: logic for check email and password
                    setState(() {});
                  },
                  child: Text(
                    "Sign In With Google",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins-Medium.ttf',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.red[600])),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AppSingUp()),
                        )
                      },
                      child: Container(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color(0xFFAC252B),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//http://192.168.0.243:8000/api/auth/facebook
