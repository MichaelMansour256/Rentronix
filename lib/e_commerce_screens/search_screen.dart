import 'package:flutter/material.dart';
import '../screen_sections/search_filter.dart';
import 'file:///C:/Users/Samah/IdeaProjects/magic-8-ball-flutter/lib/screen_sections/SearchWidget.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

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
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return  Scaffold(
        appBar:  AppBar(
          leading: IconButton(
            icon: Icon(_backIcon()),
            alignment: Alignment.centerLeft,
            tooltip: 'Back',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Search',
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0),),
          backgroundColor: Colors.red,
        ),

        body: SafeArea(
          child: Column(
            children: <Widget>[
              SearchWidget(),
              SearchFilter(),
              new Expanded(
                child: GridView.count(

                  crossAxisCount: 2,

                  children: List.generate(10, (index) {
                    return     Container(
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
                                            top: 10.0,
                                            right: 10.0,
                                            bottom: 10.0),
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
                                                child: Center(
                                                  child: FlatButton(

                                                    child: Center(
                                                      child: Text(
                                                        'View more details',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.red,
                                                          fontSize: 15.0,
                                                          fontWeight: FontWeight.bold,
                                                          letterSpacing: 0.5,
                                                        ),
                                                      ),
                                                    ),
                                                    onPressed:() {null;},
                                                  ),
                                                ),),),

                                            //_verticalD(),

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
        ),);




  }
}
