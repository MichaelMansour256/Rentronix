import 'package:flutter/material.dart';

class TestGridview extends StatefulWidget {
  @override
  _TestGridviewState createState() => _TestGridviewState();
}

class _TestGridviewState extends State<TestGridview> {


  _verticalD() => Container(
    margin: EdgeInsets.only(left: 3.0, right: 0.0, top: 07.0, bottom: 0.0),
  );

 Directionality ArabicText({String text_ , double font_size, Color text_color}   )
  {
       return  Directionality(
        textDirection: TextDirection.rtl,
        child:Text(
          text_,
          style: TextStyle(
            color: text_color,
            fontSize: font_size,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(10, (index) {
        return    Container(
          height: 50.0,
          width: 400.0,
          margin: EdgeInsets.all(7.0),
          child: Card(
           elevation: 3.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(

                  margin: EdgeInsets.only(
                      left: 10.0,
                      top: 10.0,
                      right: 10.0,
                      bottom: 10.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        ArabicText(text_:'المصدر المائى:',font_size: 15.00,text_color: Colors.black),
                        ArabicText(text_:'الموقع:',font_size: 15.00,text_color: Colors.black),
                        ArabicText(text_:'تاريخ الرفع:',font_size: 15.00,text_color: Colors.black),
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
                ),
              ],
            ),
          ),
        );
      }),

    );

  }






  SafeArea testData()
  {
    return SafeArea(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return    Container(
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
                            //_verticalDivider(),
                            Text(
                              '2585 Columbia Boulevard',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 13.0,
                                  letterSpacing: 0.5),
                            ),
                            // _verticalDivider(),
                            Text(
                              'Salisbury',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 13.0,
                                  letterSpacing: 0.5),
                            ),
                            // _verticalDivider(),
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
          );
        }),

      ),


    );


  }


}
