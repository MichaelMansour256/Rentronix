import '../e_commerce_screens/Payment_Screen.dart';
import 'package:flutter/material.dart';

class SearchFilter extends StatefulWidget {
  @override
  _SearchFilterState createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  bool checkboxValueA = false;
  bool checkboxValueB = false;
  bool checkboxValueC = false;
  bool checkboxValueD = false;
  bool checkboxValueE = false;
  @override
  Widget build(BuildContext context) {
    return  Column(
                  ////////////////////////////////////////////checking filters
                    children : <Widget> [
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                        EdgeInsets.only(left: 15.0, top: 10.0, right: 10.0, bottom: 5.0),
                        child: Text(
                          'Choose only 1 Filter:',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),

                      ConstrainedBox(
                          constraints: new BoxConstraints(
                            minHeight: 35.0,
                            maxHeight: 100.0,
                          ),
                          child: ListView(
                              padding: const EdgeInsets.all(8),
                              shrinkWrap: true, //just set this property
                              scrollDirection: Axis.horizontal,
                              cacheExtent: 60.0,
                              children: <Widget>[
                                Container(
                                    height: 60.0,
                                    width: 200.0,
                                    margin: EdgeInsets.all(7.0),
                                    child: Card(
                                      elevation: 2.0,
                                      child: CheckboxListTile(
                                        controlAffinity: ListTileControlAffinity.leading,
                                        title: Text(
                                          'Category',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        value: checkboxValueA,
                                        onChanged: (bool value) {
                                          setState(() {
                                            checkboxValueA = value;
                                            if (value)
                                            {
                                              checkboxValueB = false;
                                              checkboxValueC = false;
                                              bool checkboxValueD = false;
                                              bool checkboxValueE = false;
                                            }
                                          });
                                        },
                                      ),
                                    )),
                                ///////////////
                                Container(
                                    height: 60.0,
                                    width: 200.0,
                                    margin: EdgeInsets.all(7.0),
                                    child: Card(
                                      elevation: 2.0,
                                      child: CheckboxListTile(
                                        controlAffinity: ListTileControlAffinity.leading,
                                        title: Text(
                                          'Subcategory',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        value: checkboxValueB,
                                        onChanged: (bool value) {
                                          setState(() {
                                            checkboxValueB = value;
                                            if (value)
                                            {
                                              checkboxValueC = false;
                                              checkboxValueA = false;
                                              bool checkboxValueD = false;
                                              bool checkboxValueE = false;
                                            }
                                          });
                                        },
                                      ),
                                    )),
                                ///////////////
                                Container(
                                    height: 60.0,
                                    width: 200.0,
                                    margin: EdgeInsets.all(7.0),
                                    child: Card(
                                      elevation: 2.0,
                                      child: CheckboxListTile(
                                        controlAffinity: ListTileControlAffinity.leading,
                                        title: Text(
                                          'Products',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        value: checkboxValueC,
                                        onChanged: (bool value) {
                                          setState(() {
                                            checkboxValueC = value;
                                            if (value)
                                            {
                                              checkboxValueB = false;
                                              checkboxValueA = false;
                                              checkboxValueD = false;
                                              checkboxValueE = false;
                                            }
                                          });
                                        },
                                      ),
                                    )),

                                /////////////////////
                                ///////////////
                                Container(
                                    height: 60.0,
                                    width: 200.0,
                                    margin: EdgeInsets.all(7.0),
                                    child: Card(
                                      elevation: 2.0,
                                      child: CheckboxListTile(
                                        controlAffinity: ListTileControlAffinity.leading,
                                        title: Text(
                                          'For Rent only',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        value: checkboxValueD,
                                        onChanged: (bool value) {
                                          setState(() {
                                            checkboxValueD = value;
                                            if (value)
                                            {
                                              checkboxValueB = false;
                                              checkboxValueA = false;
                                              checkboxValueC = false;
                                              checkboxValueE = false;
                                            }
                                          });
                                        },
                                      ),
                                    )),

                                /////////////////////
                                ///////////////
                                Container(
                                    height: 60.0,
                                    width: 200.0,
                                    margin: EdgeInsets.all(7.0),
                                    child: Card(
                                      elevation: 2.0,
                                      child: CheckboxListTile(
                                        controlAffinity: ListTileControlAffinity.leading,
                                        title: Text(
                                          'For Sale only',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        value: checkboxValueE,
                                        onChanged: (bool value) {
                                          setState(() {
                                            checkboxValueE = value;
                                            if (value)
                                            {
                                              checkboxValueB = false;
                                              checkboxValueA = false;
                                              checkboxValueD = false;
                                              checkboxValueC = false;
                                            }
                                          });
                                        },
                                      ),
                                    )),

                                /////////////////////
                              ]))]);
  }
}

_verticalD() => Container(
  margin: EdgeInsets.only(left: 3.0, right: 0.0, top: 07.0, bottom: 0.0),
);
