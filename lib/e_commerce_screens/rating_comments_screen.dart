import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screen_sections/app_properties.dart';
import 'package:flutter_ecommerce_app/screen_sections/rating_dialog.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



class RatingPage extends StatefulWidget {
  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  double rating = 0.0;
  List<int> ratings = [2, 1, 5, 2, 4, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_comment_outlined), //Image.asset('assets/icons/comment.png'),
              onPressed: () {
                showDialog(
                    context: context,
                    child: Dialog(
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: RatingDialog(),
                    ));
              },
              color: Colors.black,
            ),
          ],
        ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (b, constraints) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            height: 92,
                            width: 92,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                                boxShadow: shadow,
                                border:
                                Border.all(width: 8.0, color: Colors.white)),
                            child: Image.asset('assets/headphones.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 72.0, vertical: 16.0),
                            child: Text(
                              'Boat Rockerz 350',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                '4.8',
                                style: TextStyle(fontSize: 48),
                              ),
                            ),
                            Column(
                              children: <Widget>[
                              RatingBar(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) =>
                                Icon(
                                  Icons.star,
                                  color:  Colors.amber,
                                  size: 14,
                                ),


                             // onRatingUpdate: (rating) {
                               // print(rating);
                             // },
                            ),
                                 // noRatingWidget: Icon(Icons.favorite_border,
                                   //   color: Color(0xffFF8993), size: 20),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text('from 25 people'),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Align(
                            alignment: Alignment(-1, 0),
                            child: Text('Recent Reviews')),
                      ),
                      Column(
                        children: <Widget>[
                         // ...ratings

                          //...ratings
                            //  .map((val) =>
                              Container(
                              margin:
                              const EdgeInsets.symmetric(vertical: 4.0),
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(right: 16.0),
                                    child: CircleAvatar(
                                      maxRadius: 14,
                                   // backgroundImage: Image.asset(),
                                      
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              'Billy Holand',
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.bold),
                                            ),
                                            Text(
                                              '10 am, Via iOS',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10.0),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child:  RatingBar(
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 20,
                                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                            itemBuilder: (context, _) =>
                                                Icon(
                                                  Icons.star,
                                                  color:  Colors.amber,
                                                  size: 14,
                                                ),


                                            // onRatingUpdate: (rating) {
                                            // print(rating);
                                            // },
                                          ),
                                        ),
                                        Text(
                                          'Not as I expected! ... I`m really sad',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 16.0),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                '21 likes',
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontSize: 10.0),
                                              ),
                                              Text(
                                                '1 Comment',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 10.0),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                              )
                              //.toList()
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
