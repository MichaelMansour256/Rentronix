import 'package:flutter/material.dart';
import '../screen_sections/search_filter.dart';
import 'addProduct_screen.dart';
import 'file:///C:/Users/Samah/IdeaProjects/magic-8-ball-flutter/lib/screen_sections/SearchWidget.dart';

class ManageProducts extends StatefulWidget {
  @override
  _ManageProductsState createState() => _ManageProductsState();
}

class _ManageProductsState extends State<ManageProducts> {

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
  _verticalD() => Container(
    margin: EdgeInsets.only(left: 3.0, right: 0.0, top: 07.0, bottom: 0.0),
  );

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return  SafeArea(
          child: Column(
            children: <Widget>[

              Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
                color: Color(0xFFFFFFFF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Request to add new product",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),


                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddProductScreen()),
                        );
                      },
                      icon: Icon(
                          Icons.arrow_forward_ios),
                      color: Colors.red,
                    ),

                  ],
                ),
              ),

              SearchWidget(),

              new Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(10, (index) {
                    return    Container(
                      width: deviceSize.width * 0.4,
                      height: deviceSize.height * 0.2,
                      margin: EdgeInsets.all(7.0),
                      child: Card(
                        elevation: 3.0,
                        
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 12.0,
                                    top: 5.0,
                                    right: 0.0,
                                    bottom: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Product name',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    SizedBox(
                                     height: deviceSize.width * 0.05,
                                    ),
                                    //_verticalDivider(),
                                Expanded(
                                  child:
                                    Container(
                                        width: deviceSize.width * 0.3,
                                        height: deviceSize.height * 0.1,
                                        child: Image.network('https://qph.fs.quoracdn.net/main-qimg-e477cdb400ece66af18602ed7444a592')),),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 00.0,
                                            top: 20.0,
                                            right: 10.0,
                                            bottom: 5.0),
                                        child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          children: <Widget>[
                                            Expanded(
                                              child:
                                            Container(
                                          //width: deviceSize.width * 0.01,
                                          //height: deviceSize.height * 0.01,
                                          child: FlatButton(
                                              child: Icon(Icons.edit),
                                                onPressed:() { Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => AddProductScreen()
                                                    ),
                                                );
                                                },
                                            ),),),
                                            SizedBox(
                                              width: deviceSize.width * 0.05,
                                            ),
                                            Expanded(
                                              child: Container(
                                              //  width: deviceSize.width * 0.01,
                                                child: FlatButton(
                                                    child: Icon(Icons.delete
                                                    ),
                                                   onPressed:() {null;}    ,
                                                ),
                                              ),
                                            ),
                                            _verticalD(),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),

            ],
          ),
        );




  }
}
