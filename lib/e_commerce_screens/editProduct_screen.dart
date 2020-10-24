import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/used_widgets/TextField_Widget.dart';


class EditProductScreen extends StatefulWidget {
  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {


  final TextEditingController usernameController = TextEditingController();
  var _selectedLocationCategory;
  var _selectedLocationSubCategory;
  final TextEditingController passwordController = TextEditingController();
  bool isVisible, isVisible2;

  @override
  void initState() {
    super.initState();
    isVisible = isVisible2 = false;
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery
        .of(context)
        .size;
    AppBar appbar = AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        alignment: Alignment.centerLeft,
        tooltip: 'Back',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text('Edit product'),
      backgroundColor: Colors.red,);
    return Scaffold(
      appBar: appbar,
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Container(
                width: deviceSize.width * 0.9,
                height: deviceSize.height * 0.7,
                margin: EdgeInsets.only(top: deviceSize.height * 0.015),
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: deviceSize.height * 0.05,
                    ),

                    Center(
                      child: Container(
                        width: deviceSize.width * 0.6,
                        height: deviceSize.height * 0.3,
                        margin: EdgeInsets.only(top: deviceSize.height * 0.015),
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.of(context).popUntil(ModalRoute.withName(
                                '/'));
                            // Navigator.of(context)
                            // .pushReplacementNamed(MainScreen.routeName);
                          },
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),

                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: deviceSize.height * 0.08,),
                              Center(child: Icon(Icons.camera_alt_outlined)),
                              SizedBox(
                                height: deviceSize.height * 0.05,
                              ),
                              Text(
                                'View product picture ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: deviceSize.width * 0.04,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: deviceSize.height * 0.04,),
                    Center(
                      child: Container(
                        width: deviceSize.width * 0.6,
                        height: deviceSize.height * 0.06,

                        child: FloatingActionButton(
                              child:  Center(
                                child: Text(
                                  'Add new product picture ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: deviceSize.width * 0.04,
                                  ),
                                ),
                              ),
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),

                            onPressed: null),
                      ),
                    ),
                    SizedBox(
                      height: deviceSize.height * 0.05,
                    ),
                    TextFieldWidget(
                      deviceSize: deviceSize,
                      controller: usernameController,
                      prefixIconData: Icons.person,
                      labelText: 'Product name',
                    ),
                    TextFieldWidget(
                      deviceSize: deviceSize,
                      controller: usernameController,
                      prefixIconData: Icons.person,
                      labelText: 'Product descrption',
                    ),
                    TextFieldWidget(
                      deviceSize: deviceSize,
                      controller: passwordController,
                      prefixIconData: Icons.person,
                      labelText: 'selling price',

                    ),

                    TextFieldWidget(
                      deviceSize: deviceSize,
                      controller: passwordController,
                      prefixIconData: Icons.vpn_key,
                      labelText: 'renting price',

                    ),
                    TextFieldWidget(
                      deviceSize: deviceSize,
                      controller: usernameController,
                      prefixIconData: Icons.admin_panel_settings,
                      labelText: 'quantity',
                    ),



                  ],
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.03,
              ),
              Center(
                child: Container(
                  width: deviceSize.width * 0.7,
                  height: deviceSize.height * 0.065,
                  margin: EdgeInsets.only(top: deviceSize.height * 0.015),
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).popUntil(ModalRoute.withName('/'));
                      // Navigator.of(context)
                      // .pushReplacementNamed(MainScreen.routeName);
                    },
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Text(
                      'Update  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: deviceSize.width * 0.04,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
