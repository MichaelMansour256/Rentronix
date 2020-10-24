import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screen_sections/order_summary.dart';
import 'package:flutter_ecommerce_app/screen_sections/seller_info.dart';
import 'package:flutter_ecommerce_app/screen_sections/user_info.dart';



class OrderDetailsScreen extends StatefulWidget {
  @override
  _OrderDetailsScreenState createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery
        .of(context)
        .size;
    AppBar appbar = AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        alignment: Alignment.centerLeft,
        tooltip: 'Back',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text('Order details'),
      backgroundColor: Colors.red,);
    return  Scaffold(
      appBar: appbar,
      body:  Center(
        child: Container(
          width: deviceSize.width * 0.9,
          height: deviceSize.height * 0.9,
          margin: EdgeInsets.only(top: deviceSize.height * 0.015),
          child: ListView(
            children:<Widget> [
              OrderSummary(),
              SizedBox(
                height: deviceSize.height * 0.05,
              ),
              Userinfo(),
              SizedBox(
                height: deviceSize.height * 0.05,
              ),
              Sellerinfo(),

            ],
          ),
        ),
      ),
    );
  }
}
