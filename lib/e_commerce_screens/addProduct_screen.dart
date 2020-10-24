import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/used_widgets/TextField_Widget.dart';




class AddProductScreen extends StatefulWidget {

 // static final routeName = "/add_engineer_screen";

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {

  final TextEditingController usernameController = TextEditingController();
  var _selectedLocationCategory;
  var _selectedLocationSubCategory;
  final TextEditingController passwordController = TextEditingController();
  bool isVisible, isVisible2;
/*
  @override
  void initState() {
    super.initState();
    isVisible = isVisible2 = false;
  }
*/
  @override


  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    AppBar appbar=  AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back) ,
        alignment: Alignment.centerLeft,
        tooltip: 'Back',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text('Add product'),
      backgroundColor: Colors.red,);

    return Scaffold(
      appBar:appbar,
      backgroundColor: Colors.white,

      body:


      SafeArea(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [  Container(
              width: deviceSize.width ,
              height: deviceSize.height * 0.85,
              margin: EdgeInsets.only(top: deviceSize.height * 0.015),
              child: Expanded(
                child: ListView(
                  children:<Widget> [
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
                            Navigator.of(context).popUntil(ModalRoute.withName('/'));
                            // Navigator.of(context)
                            // .pushReplacementNamed(MainScreen.routeName);
                          },
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),

                          child: Column(
                            children:<Widget> [
                              SizedBox(
                                height: deviceSize.height * 0.08,),
                              Center(child: Icon(Icons.camera_alt_outlined)),
                              SizedBox(
                                height: deviceSize.height * 0.05,
                              ),
                              Text(
                                'Add product picture ',
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
                      prefixIconData: Icons.description_outlined,
                      labelText: ' model description ',
                    ),
                    TextFieldWidget(
                      deviceSize: deviceSize,
                      controller: usernameController,
                      prefixIconData: Icons.description_outlined,
                      labelText: 'project overview',
                    ),
                    TextFieldWidget(
                      deviceSize: deviceSize,
                      controller: usernameController,
                      prefixIconData: Icons.info_outline,
                      labelText: 'data sheet url',
                    ),
                    TextFieldWidget(
                      deviceSize: deviceSize,
                      controller: passwordController,
                      prefixIconData: Icons.attach_money_outlined,
                      labelText: 'selling price',

                    ),

                    TextFieldWidget(
                      deviceSize: deviceSize,
                      controller: passwordController,
                      prefixIconData: Icons.attach_money,
                      labelText: 'renting price',

                    ),
                    TextFieldWidget(
                      deviceSize: deviceSize,
                      controller: usernameController,
                      prefixIconData: Icons.format_list_numbered,
                      labelText: 'quantity',
                    ),
                    Container(
                      width: deviceSize.width * 0.3,
                      height: deviceSize.height * 0.05,
                      margin: EdgeInsets.only(top: deviceSize.height * 0.015,left:deviceSize.height * 0.05 ),

                      child: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        value: _selectedLocationCategory,
                        hint: Text('category'),
                        isDense: true,
                        focusColor: Colors.white,
                        items: <String>['A', 'B', 'C', 'D','add a new one'].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (chosen) {
                          setState(() {
                            _selectedLocationCategory= chosen;
                            print(_selectedLocationCategory);
                          });
                        },
                      ),

                    ),
                    TextFieldWidget(
                      deviceSize: deviceSize,
                      controller: passwordController,
                      prefixIconData: Icons.text_fields,
                      labelText: 'New category ',

                    ),
                    SizedBox(
                      height: deviceSize.height * 0.03,
                    ),
                    Container(
                      width: deviceSize.width * 0.3,
                      height: deviceSize.height * 0.05,
                      margin: EdgeInsets.only(top: deviceSize.height * 0.015,left:deviceSize.height * 0.05 ),
                      child: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        value: _selectedLocationSubCategory,
                        hint: Text('Subcategory'),
                        isDense: true,
                        focusColor: Colors.white,
                        items: <String>['A', 'B', 'C', 'D','add a new one'].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (chosen) {
                          setState(() {
                            _selectedLocationSubCategory = chosen;
                            print(_selectedLocationSubCategory);
                          });
                        },
                      ),
                    ),
                    TextFieldWidget(
                      deviceSize: deviceSize,
                      controller: passwordController,
                      prefixIconData: Icons.text_fields,
                      labelText: 'New Subcategory\'s title ',

                    ),
                    TextFieldWidget(
                      deviceSize: deviceSize,
                      controller: passwordController,
                      prefixIconData: Icons.info_outline,
                      labelText: 'New Subcategory\'s description ',

                    ),
                    SizedBox(
                      height: deviceSize.height * 0.03,
                    ),
                    Container(
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
                          'Request Admin to add ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: deviceSize.width * 0.04,
                          ),
                        ),
                      ),
                    ),

                  ],
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
