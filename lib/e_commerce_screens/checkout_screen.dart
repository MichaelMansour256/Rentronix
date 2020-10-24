import '../main.dart';
import 'Payment_Screen.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => check_out();
}

class Item {
  final String itemName;
  final String itemQun;
  final String itemPrice;

  Item({this.itemName, this.itemQun, this.itemPrice});
}

class check_out extends State<Checkout> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool checkboxValueA = true;
  bool checkboxValueB = false;
  bool checkboxValueC = false;

  IconData _backIcon() {
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return Icons.arrow_back;
      case TargetPlatform.iOS:
        return Icons.arrow_back_ios;
    }
    assert(false);
    return null;
  }

  List<Item> itemList = <Item>[
    Item(itemName: 'Resistor220ohm', itemQun: 'Qty:1', itemPrice: '\$ 100'),
    Item(itemName: 'AND-TTL-2 Input', itemQun: 'Qty:3', itemPrice: '\$ 112'),
    Item(itemName: '555 timer IC', itemQun: 'Qty:2', itemPrice: '\$ 105'),
    Item(itemName: '74HC – High-speed CMOS,', itemQun: 'Qty:1', itemPrice: '\$ 90'),
    Item(itemName: 'microcontroller', itemQun: 'Qty:2', itemPrice: '\$ 70'),
    Item(itemName: 'full adder', itemQun: 'Qty:1', itemPrice: '\$ 50'),
  ];
  String toolbarname = 'Cart';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final deviceSize = MediaQuery.of(context).size;
    //final double height = MediaQuery.of(context).size.height;

    AppBar appBar = AppBar(
      leading: IconButton(
        icon: Icon(_backIcon()),
        alignment: Alignment.centerLeft,
        tooltip: 'Back',
        onPressed: () {
          Navigator.pushReplacement(
              context,
              new MaterialPageRoute(
              builder: (BuildContext context) =>MyHomePage()));
        },
      ),
      title: Text(toolbarname),
      backgroundColor: Colors.red,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 150.0,
            width: 30.0,
            child: GestureDetector(
              onTap: () {
                /*Navigator.of(context).push(
                   MaterialPageRoute(
                      builder:(BuildContext context) =>
                       CartItemsScreen()
                  )
              );*/
              },
            ),
          ),
        )
      ],
    );

    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar,

      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(5.0),
              child: Card(
                  child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // three line description
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          'Details',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              Icons.check_circle,
                                              color: Colors.blue,
                                            ),
                                            onPressed: null)
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          'Payment',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black38),
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              Icons.check_circle,
                                              color: Colors.black38,
                                            ),
                                            onPressed: null)
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ],
                      )))),
          _verticalDivider(),
          /////////////////////////////////////////////////////////////for delivery text
          Expanded(
            child: Container(
              width: deviceSize.width * 0.9,
              height: deviceSize.height * 0.5,
              child: ListView(



                children :<Widget> [
                  Container(
                    alignment: Alignment.topLeft,
                    margin:
                        EdgeInsets.only(left: 12.0, top: 5.0, right: 0.0, bottom: 5.0),
                    child: Text(
                      'Delivery Address',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                  ),



                      ///////////////////////////////////////////////////////////item dummy data
                      Container(
                        height: 110.0,
                        width: 400.0,
                        margin: EdgeInsets.all(7.0),
                        child: Card(
                          elevation: 3.0,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 12.0,
                                        top: 5.0,
                                        right: 0.0,
                                        bottom: 5.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Naomi A. Schultz',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.5,
                                          ),
                                        ),
                                        _verticalDivider(),
                                        Text(
                                          '2585 Columbia Boulevard',
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 13.0,
                                              letterSpacing: 0.5),
                                        ),
                                        _verticalDivider(),
                                        Text(
                                          'Salisbury',
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 13.0,
                                              letterSpacing: 0.5),
                                        ),
                                        _verticalDivider(),
                                        Text(
                                          'MD 21801',
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 13.0,
                                              letterSpacing: 0.5),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 00.0,
                                              top: 05.0,
                                              right: 0.0,
                                              bottom: 5.0),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[

                                              _verticalD(),

                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
/////////////////////////////////////////////////////////////////////////////



              _verticalDivider(),

  ///////////////////////////////////////////////////////////////////////////////////order summry
              Container(
                alignment: Alignment.topLeft,
                margin:
                    EdgeInsets.only(left: 12.0, top: 5.0, right: 0.0, bottom: 5.0),
                child: Text(
                  'Order Summary',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
              //////////////////////////////////////////////////////the list view of order
              Container(
                  margin: EdgeInsets.only(
                      left: 12.0, top: 5.0, right: 12.0, bottom: 5.0),
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

                ],
              ),
            ),
          ),

 //////////////////////////////HERE
 ////////////////////////////////////////////////////////////////////////////////////////////total
          SizedBox(
              height:20.0,
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
                       child:Text(
                      'Total :',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    ),
                    Text(
                      '\$ 524',
                      style: TextStyle(fontSize: 17.0, color: Colors.black54),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: OutlineButton(
                            borderSide:
                                BorderSide(color: Colors.red),
                            child: const Text('CONFIRM ORDER'),
                            textColor: Colors.red.shade500,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Payment()));


                            },
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )),
                      ),
                    ),
                  ],
                ),
              )),
/////////////////////////////////////////////////////////////////////////////////////////////total
        ],
      ),

    );
  }

  /*IconData _add_icon() {
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return Icons.add;
      case TargetPlatform.iOS:
        return Icons.arrow_back_ios;
    }
    assert(false);
    return null;
  }

  IconData _sub_icon() {
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return Icons.remove;
      case TargetPlatform.iOS:
        return Icons.arrow_back_ios;
    }
    assert(false);
    return null;
  }  */

  _verticalDivider() => Container(
        padding: EdgeInsets.all(2.0),
      );

  _verticalD() => Container(
        margin: EdgeInsets.only(left: 3.0, right: 0.0, top: 0.0, bottom: 0.0),
      );
}
