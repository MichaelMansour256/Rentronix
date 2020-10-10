import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ecommerce_app/components/AppSingUp.dart';
import 'package:http/http.dart' as http;

class AppSignIn extends StatefulWidget {
  @override
  _AppSignInState createState() => _AppSignInState();
}

class _AppSignInState extends State<AppSignIn> {
  var _email;
  var _password;
  final emailController = new TextEditingController();
  final passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;

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
                      //_email = emailController.text;
                      //_password = passwordController.text;
                      //print('$_email + $_password');
                      loginWithFacebook();
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
                    setState(() {
                      //_email = emailController.text;
                      //_password = passwordController.text;
                      //print('$_email + $_password');
                      loginWithGoogle();
                    });
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
void loginWithFacebook() {
  String url = 'https://10.0.2.2:8080/api/auth/facebook';
  http.post(url, body: {
    'client_id': '1',
    'client_secret': 'qpBx9foSSvEoPfmWrESkwRt3Z4p9LPo8KkXQOalN',
    'user_id': '2690312317874170',
    'access_token':
        'EAADc1wadlV4BAOa23gAZCaKNgN1sFfNHKpCwW6XhkwvfTZAEYpPR6ZCXNYMtLYuARtcAkFO2vwiSY8h2yKsugXBBZCSQ1IfeviZChZBytYG3qKrDZAOzREoDz75G2tcWsstDT1oFxpEZCxtzKxcd7xztKyFphk935nFqoDi5oUzVg64ed16WL0Ur8rB3S5eoKpVdmLkZC6jdV5qc2gVi6wJs6L1CZBbJN9sZCx7CSBz1PXm8gZDZD'
  }).then((response) {
    print('code  ${response.statusCode}');
    print('body ${response.body}');
  });
}

void loginWithGoogle() {
  String url = 'http://localhost/Rentronix/public/api/auth/google';
  http.post(url, headers: {
    'Accept': 'Application/json',
  }, body: {
    'client_id': '5',
    'client_secret': 'qXK35Q3B1gUVJnKqPOiFj7R1Z4TLUpL8WZ2WEci7',
    'user_id': '2690312317874170',
    'access_token':
        'EAADc1wadlV4BAOa23gAZCaKNgN1sFfNHKpCwW6XhkwvfTZAEYpPR6ZCXNYMtLYuARtcAkFO2vwiSY8h2yKsugXBBZCSQ1IfeviZChZBytYG3qKrDZAOzREoDz75G2tcWsstDT1oFxpEZCxtzKxcd7xztKyFphk935nFqoDi5oUzVg64ed16WL0Ur8rB3S5eoKpVdmLkZC6jdV5qc2gVi6wJs6L1CZBbJN9sZCx7CSBz1PXm8gZDZD'
  }).then((response) {
    print('code  ${response.statusCode}');
    print('body ${response.body}');
  });
}
