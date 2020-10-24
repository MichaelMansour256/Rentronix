import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/EditInfo.dart';
import 'package:flutter_ecommerce_app/screens/WishListScreen.dart';

import 'iam_seller_screen.dart';
import 'orderhistory_screen.dart';


class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override

  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;


    return Scaffold(

        appBar:  AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back) ,
            alignment: Alignment.centerLeft,
            tooltip: 'Back',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Profile'),
          backgroundColor: Colors.red,),

        body: SafeArea(
        child: Container(
        height: deviceSize.height * 0.8,
        child: ListView(
          children: [
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
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
                  MaterialPageRoute(builder: (context) => Order_History()),
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
                  MaterialPageRoute(builder: (context) => SellerScreen()),
                ),
                child: Card(
                  color: Colors.white,
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: ListTile(
                    leading: Icon(Icons.verified_user),
                    title: Text(" Become A Seller section "),
                  ),
                ),
              ),


              ],),
          ],
        ))));
  }
}
