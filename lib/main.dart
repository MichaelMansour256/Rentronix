import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common_widget/AppBarWidget.dart';
import 'package:flutter_ecommerce_app/common_widget/BottomNavBarWidget.dart';
import 'package:flutter_ecommerce_app/common_widget/DrawerWidget.dart';
import 'package:flutter_ecommerce_app/screens/HomeScreen.dart';
import 'package:flutter_ecommerce_app/screens/ProductDetailScreen.dart';
import 'package:flutter_ecommerce_app/screens/Profile.dart';
import 'package:flutter_ecommerce_app/screens/ShoppingCartScreen.dart';
import 'package:flutter_ecommerce_app/screens/WishListScreen.dart';
import 'package:flutter_ecommerce_app/components/AppSignIn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
          fontFamily: 'Roboto',
          primaryColor: Colors.white,
          primaryColorDark: Colors.white,
          backgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
    );
  }
}

int currentIndex = 0;

void navigateToScreens(int index) {
  currentIndex = index;
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageNewState createState() => _MyHomePageNewState();
}

class _MyHomePageNewState extends State<MyHomePage> {
  final List<Widget> viewContainer = [
    HomeScreen(),
    WishListScreen(),
    ShoppingCartScreen(),
    HomeScreen()
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: appBarWidget(context),
        drawer: DrawerWidget(),
        body: IndexedStack(
          index: _selectedIndex,
          children: viewContainer,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(color: Color(0xFF545454)),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              title: Text(
                'Wish List',
                style: TextStyle(color: Color(0xFF545454)),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.shoppingBag),
              title: Text(
                'Cart',
                style: TextStyle(color: Color(0xFF545454)),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text(
                'Dashboard',
                style: TextStyle(color: Color(0xFF545454)),
              ),
            ),
          ],
          selectedItemColor: Color(0xFFAA292E),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              navigateToScreens(index);
            });
          },
        ),
      ),
    );
  }
}

//https://api.evaly.com.bd/core/public/products/?page=1&limit=12&category=facial-cleansing-brushes-84365a5ee

//https://api.evaly.com.bd/core/public/products/?page=1&limit=12&category=bags-luggage-966bc8aac
