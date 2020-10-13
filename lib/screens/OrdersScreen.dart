import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Api/FavListApi.dart';
import 'package:flutter_ecommerce_app/common_widget/AppBarWidget.dart';

FavListApi fav = FavListApi();

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List<Map<String, String>> s = fav.getFav();
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
                title: Text(s[index]['name']),
                subtitle: Text(s[index]['price']),
                leading: Icon(
                  Icons.favorite_border,
                ),
              ),
            );
          }),
    );
  }
}
