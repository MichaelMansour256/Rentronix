import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    /* void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        navigateToScreens(index);
      });
    }*/

    return BottomNavigationBar(
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
    );
  }
}
