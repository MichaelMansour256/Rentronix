import 'package:flutter/material.dart';

class StaticTextFieldWidget extends StatelessWidget {
  final Size deviceSize;
  final TextEditingController controller;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final Function suffixOnTap;
  final bool obscureText;
  final String labelText;

  const StaticTextFieldWidget(
      {this.deviceSize,
      this.controller,
      this.prefixIconData,
      this.suffixIconData,
      this.suffixOnTap,
      this.obscureText = false,
      this.labelText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: deviceSize.width * 0.8,
          height: deviceSize.height * 0.08,
          margin: EdgeInsets.all(deviceSize.height * 0.01),
          child: Theme(
            data: ThemeData(primaryColor: Colors.black26),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextFormField(
                textAlign: TextAlign.right,
                enabled: false,

                obscureText: obscureText,

                decoration: InputDecoration(
                  prefixIcon: Icon(
                    prefixIconData,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      suffixIconData,
                      color: Colors.black.withOpacity(0.8),
                    ),

                  ),
                  labelText: labelText,
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                style: TextStyle(color: Colors.black87),
                cursorColor: Colors.green,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
