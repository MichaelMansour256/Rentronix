import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Api/FavListApi.dart';
import 'package:flutter_ecommerce_app/Api/OrdersApi.dart';

import 'package:flutter_ecommerce_app/common_widget/AppBarWidget.dart';


FavListApi fav = FavListApi();
OrdersApi orders = OrdersApi();

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List<Map<String, String>> s = fav.getFav();
  List<Map<String, String>> o = orders.getOrdersFake();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      body: ListView.builder(
          itemCount: s.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  //TODO : redirect to this product page
                },
                title: Text(o[index]['name']),
                subtitle: Text(o[index]['status']),
                leading: CircleAvatar(
                  backgroundColor: Colors.red[700],
                ),
              ),
            );
          }),
    );
  }
}
