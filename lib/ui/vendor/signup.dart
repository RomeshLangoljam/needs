import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:needs/ui/category/_category.dart';
import 'package:needs/values/dimens.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _firstController = TextEditingController();
  TextEditingController _lastController = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  FocusNode _fnLastName = new FocusNode();
  FocusNode _fnPhone = new FocusNode();
  FocusNode _fnAddress = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/wedding.png"), fit: BoxFit.cover),
              ),
              child: BackdropFilter(
                filter:ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  padding: EdgeInsets.all(Dimens.COMMON_PADDING),
                  child: Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.email,
                              size: 60,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: _firstController,
                              keyboardType: TextInputType.text,
                              decoration: getInputDecoration("First Name"),
                              onFieldSubmitted: (v) {
                                FocusScope.of(context)
                                    .requestFocus(_fnLastName);
                              },
                              validator: (text) {
                                if (text.isEmpty) {
                                  return "First Name  can't be Empty";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: _lastController,
                              keyboardType: TextInputType.text,
                              focusNode: _fnLastName,
                              onFieldSubmitted: (v) {
                                FocusScope.of(context).requestFocus(_fnPhone);
                              },
                              decoration: getInputDecoration("Last Name"),
                              validator: (text) {
                                if (text.isEmpty) {
                                  return ("Last Name can't be Empty");
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: _phone,
                              keyboardType: TextInputType.number,
                              focusNode: _fnPhone,
                              onFieldSubmitted: (v) {
                                FocusScope.of(context).requestFocus(_fnAddress);
                              },
                              decoration: InputDecoration(
                                hintText: "Phone",
                                focusedBorder: InputBorder.none,
                              ),
                              validator: (num) {
                                if (num.isEmpty) {
                                  return ("Phone no. can't be Empty");
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: _addressController,
                              keyboardType: TextInputType.text,
                              focusNode: _fnAddress,
                              decoration: InputDecoration(
                                hintText: "Address",
                                focusedBorder: InputBorder.none,
                              ),
                              validator: (text) {
                                if (text.isEmpty) {
                                  return ("Address can't be Empty");
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Email",
                                focusedBorder: InputBorder.none,
                              ),
                              validator: (text) {
                                if (text.isEmpty) {
                                  return ("Email can't be Empty");
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                                focusedBorder: InputBorder.none,
                              ),
                              validator: (text) {
                                if (text.isEmpty) {
                                  return ("Email can't be Empty");
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              padding: EdgeInsets.all(15),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(fontSize: 15),
                              ),
                              color: Color(0xFF3CE955),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Category()));
                              },
                            )
                          ],
                        ),
                      )),
                ),
              ))),
    );
  }

  getInputDecoration(String hintext) {
    return InputDecoration(hintText: hintext, focusedBorder: InputBorder.none);
  }
}
