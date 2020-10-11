import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ecommerce_app/components/AppSingUp.dart';
import 'package:flutter_ecommerce_app/utils/Urls.dart';
import 'package:http/http.dart' as http;

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.red,
            ),
            Text('Your Name'),
            Row(
              children: <Widget>[
                Icon(Icons.account_balance_wallet),
                Text('your balance'),
              ],
            ),
            FlatButton(
              onPressed: () {
                //TODO go to screen to put the new info
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.settings),
                  Text('Edit Your Info'),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {
                //TODO go to screen to put the new info
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.favorite),
                  Text('Favourite List'),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {
                //TODO go to screen to put the new info
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.list),
                  Text('Your Orders'),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {
                //TODO go to screen to put the new info
              },
              child: Row(
                children: <Widget>[
                  Icon(Icons.verified_user),
                  Text('Be A Seller'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
