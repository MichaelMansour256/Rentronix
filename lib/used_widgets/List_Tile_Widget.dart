import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({this.buttonText, this.tileText, this.onSelected});
  final String buttonText;
  final String tileText;
  final Function onSelected;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      title: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Text(tileText,style:TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}
