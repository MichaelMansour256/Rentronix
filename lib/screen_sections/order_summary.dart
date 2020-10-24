import 'package:flutter/material.dart';

class Item {
  final String itemName;
  final String itemQun;
  final String itemPrice;

  Item({this.itemName, this.itemQun, this.itemPrice});
}

class OrderSummary extends StatelessWidget {
  List<Item> itemList = <Item>[
    Item(itemName: 'Resistor220ohm', itemQun: 'Qty:1', itemPrice: '\$ 100'),
    Item(itemName: 'AND-TTL-2 Input', itemQun: 'Qty:3', itemPrice: '\$ 112'),
    Item(itemName: '555 timer IC', itemQun: 'Qty:2', itemPrice: '\$ 105'),
    Item(itemName: '74HC – High-speed CMOS,', itemQun: 'Qty:1', itemPrice: '\$ 90'),
    Item(itemName: 'microcontroller', itemQun: 'Qty:2', itemPrice: '\$ 70'),
    Item(itemName: 'full adder', itemQun: 'Qty:1', itemPrice: '\$ 50'),
  ];

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery
        .of(context)
        .size;

    return  Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin:
                EdgeInsets.only(left: 12.0, top: 5.0, right: 0.0, bottom: 5.0),
            child: Text(
              'Order Summary',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
          Container(
              margin:
                  EdgeInsets.only(left: 12.0, top: 5.0, right: 12.0, bottom: 5.0),
              height: 170.0,
              child: ListView.builder(
                  itemCount: itemList.length,
                  itemBuilder: (BuildContext cont, int ind) {
                    return SafeArea(
                        child: Column(
                      children: <Widget>[
                        Divider(height: 15.0),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(itemList[ind].itemQun,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold)),
                              Text(itemList[ind].itemName,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold)),
                              Text(itemList[ind].itemPrice,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ));
                  })),
          ////////////////////////////////////////////////////////////////////////////////////////////total
          SizedBox(
            height: 20.0,
          ),
          Container(
              alignment: Alignment.bottomLeft,
              height: 50.0,
              child: Card(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //IconButton(icon: Icon(Icons.), onPressed: null),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Total :',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          '\$ 524',
                          style: TextStyle(fontSize: 17.0, color: Colors.black54),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
    );

    //////////////////////////////////////////////////////the list view of order
  }
}
