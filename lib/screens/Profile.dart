import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/OrdersScreen.dart';
import 'package:flutter_ecommerce_app/screens/WishListScreen.dart';
import 'package:flutter_ecommerce_app/screens/EditInfo.dart';
import 'package:flutter_ecommerce_app/screens/beASeller.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar:  AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back),
    alignment: Alignment.centerLeft,
    tooltip: 'Back',
    onPressed: () {
    Navigator.pop(context);
    },
    ),),

      body:
      SafeArea(

            child: Container(
              height: deviceSize.height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 50.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Your Name'),
                  SizedBox(
                    height: 5.0,
                  ),
                  FlatButton(
                    child: Card(
                      color: Colors.white,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: ListTile(
                        leading: Icon(Icons.account_balance_wallet),
                        title: Text("wallet"),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => editYourInfo()),
                    ),
                    child: Card(
                      color: Colors.white,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: ListTile(
                        leading: Icon(Icons.edit),
                        title: Text("Edit your info"),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WishListScreen()),
                    ),
                    child: Card(
                      color: Colors.white,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: ListTile(
                        leading: Icon(Icons.favorite),
                        title: Text("Favourite List"),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Orders()),
                    ),
                    child: Card(
                      color: Colors.white,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: ListTile(
                        leading: Icon(Icons.list),
                        title: Text("your orders"),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => beASeller()),
                    ),
                    child: Card(
                      color: Colors.white,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: ListTile(
                        leading: Icon(Icons.verified_user),
                        title: Text("Be A Seller"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


    );
  }
}
