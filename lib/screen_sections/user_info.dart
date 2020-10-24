import 'package:flutter/material.dart';
class Item {
  final String name;
  final String deliveryTime;
  final String oderId;
  final String oderAmount;
  final String paymentType;
  final String address;
  final String cancelOder;

  Item(
      {this.name,
        this.deliveryTime,
        this.oderId,
        this.oderAmount,
        this.paymentType,
        this.address,
        this.cancelOder});
}

class Userinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Item> itemList = <Item>[
      Item(
          name: 'Jhone Miller',
          deliveryTime: '26-5-2106',
          oderId: '#CN23656',
          oderAmount: '\₹ 650',
          paymentType: 'online',
          address: '1338 Karen Lane,Louisville,Kentucky',
          cancelOder: 'Cancel Order'),
      Item(
          name: 'Gautam Dass',
          deliveryTime: '10-8-2106',
          oderId: '#CN33568',
          oderAmount: '\₹ 900',
          paymentType: 'COD',
          address: '319 Alexander Drive,Ponder,Texas',
          cancelOder: 'View Receipt'),
      Item(
          name: 'Jhone Hill',
          deliveryTime: '23-3-2107',
          oderId: '#CN75695',
          oderAmount: '\₹ 250',
          paymentType: 'online',
          address: '92 Jarvis Street,Buffalo, York',
          cancelOder: 'View Receipt'),
      Item(
          name: 'Miller Root',
          deliveryTime: '10-5-2107',
          oderId: '#CN45238',
          oderAmount: '\₹ 500',
          paymentType: 'Bhim/upi',
          address: '103 Romrog Way,Grand Island,Nebraska',
          cancelOder: 'Cancel Order'),
      Item(
          name: 'Lag Gilli',
          deliveryTime: '26-10-2107',
          oderId: '#CN69532',
          oderAmount: '\₹ 1120',
          paymentType: 'online',
          address: '8 Clarksburg Park,Marble Canyon,Arizona',
          cancelOder: 'View Receipt'),
    ];
    return SafeArea(
              child: Column(children: <Widget>[


                Container(
                  alignment: Alignment.topLeft,
                  margin:
                  EdgeInsets.only(left: 12.0, top: 5.0, right: 0.0, bottom: 5.0),
                  child: Text(
                    'Client details ',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),


                Container(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
                    color: Colors.black12,
                    child: Card(
                        elevation: 4.0,
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(
                                10.0, 10.0, 10.0, 10.0),
                            child: GestureDetector(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    // three line description
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        itemList[0].name,
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontStyle: FontStyle.normal,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(top: 3.0),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'To Deliver On :' +
                                            itemList[0].deliveryTime,
                                        style: TextStyle(
                                            fontSize: 13.0, color: Colors.black54),
                                      ),
                                    ),
                                    Divider(
                                      height: 10.0,
                                      color: Colors.amber.shade500,
                                    ),

                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                            padding: EdgeInsets.all(3.0),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  'Order Id',
                                                  style: TextStyle(
                                                      fontSize: 13.0,
                                                      color: Colors.black54),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(top: 3.0),
                                                  child: Text(
                                                    itemList[0].oderId,
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        color: Colors.black87),
                                                  ),
                                                )
                                              ],
                                            )),
                                        Container(
                                            padding: EdgeInsets.all(3.0),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  'Order Amount',
                                                  style: TextStyle(
                                                      fontSize: 13.0,
                                                      color: Colors.black54),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(top: 3.0),
                                                  child: Text(
                                                    itemList[0].oderAmount,
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        color: Colors.black87),
                                                  ),
                                                ),
                                              ],
                                            )),
                                        Container(
                                            padding: EdgeInsets.all(3.0),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  'Payment Type',
                                                  style: TextStyle(
                                                      fontSize: 13.0,
                                                      color: Colors.black54),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(top: 3.0),
                                                  child: Text(
                                                    itemList[0].paymentType,
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        color: Colors.black87),
                                                  ),
                                                )
                                              ],
                                            )),
                                      ],
                                    ),
                                    Divider(
                                      height: 10.0,
                                      color: Colors.amber.shade500,
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          size: 20.0,
                                          color: Colors.amber.shade500,
                                        ),
                                        Text(itemList[0].address,
                                            style: TextStyle(
                                                fontSize: 13.0,
                                                color: Colors.black54)),
                                      ],
                                    ),
                                    Divider(
                                      height: 10.0,
                                      color: Colors.amber.shade500,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.phone,
                                          size: 20.0,
                                          color: Colors.amber.shade500,
                                        ),
                                        Text('+010000012220',
                                            style: TextStyle(
                                                fontSize: 13.0,
                                                color: Colors.black54)),
                                      ],
                                    ),
                                  ],
                                ))))),
              ]));

  }

  }

