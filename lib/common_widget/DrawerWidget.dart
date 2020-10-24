import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/Profile.dart';
import 'package:flutter_ecommerce_app/e_commerce_screens/user_profile.dart';
import 'package:flutter_ecommerce_app/main.dart';
import 'package:flutter_ecommerce_app/screens/WishListScreen.dart';
import 'package:flutter_ecommerce_app/components/AppSignIn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createDrawerHeader(),
            _createDrawerItem(
                icon: Icons.person,
                text: 'Profile',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserProfile()),
                )),
            _createDrawerItem(
                icon: Icons.home,
                text: 'Home',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    )),

            _createDrawerItem(
                icon: Icons.favorite_border,
                text: 'Wish List',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WishListScreen()),
                    )),
            _createDrawerItem(
                icon: Icons.call,
                text: 'Contact Us',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmptyWishListScreen()),

                    )),
            _createDrawerItem(
                icon: FontAwesomeIcons.user,
                text: 'Log out',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppSignIn()),
                )),

          ],
        ),
      ),
    );
  }
}

Widget _createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              'assets/images/ic_app_icon.png',
              width: 130,
              height: 130,
            ),
          ),
        ),

      ]));
}

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xFF808080),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            text,
            style: TextStyle(color: Color(0xFF484848)),
          ),
        )
      ],
    ),
    onTap: onTap,
  );
}
