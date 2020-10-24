import 'package:flutter/material.dart';

import 'addProduct_screen.dart';
import 'manage_products.dart';
import 'orderhistory_screen.dart';


class SellerScreen extends StatefulWidget {
  @override
  _SellerScreenState createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          alignment: Alignment.centerLeft,
          tooltip: 'Back',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Seller\'s special screen ',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0),),
        backgroundColor: Colors.red,
      ),

      body: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
                child: Container(
                  color: Color(0xFFf5f6f7),
                ),
              ),


              PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: TabBar(
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: 'Manage products',
                    ),
                    Tab(
                      text: 'Orders from clients',
                    ),

                  ], // list of tabs
                ),
              ),
              SizedBox(
                height: 10,
                child: Container(
                  color: Color(0xFFf5f6f7),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.white24,
                     child: ManageProducts(),

                    ),
                    Container(
                        color: Colors.white24,
                        child:Order_History()
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



