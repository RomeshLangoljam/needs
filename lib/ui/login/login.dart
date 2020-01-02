import 'package:flutter/material.dart';
import 'package:needs/ui/vendor/signup.dart';
import 'package:needs/ui/vendors_listing/vendor_listing.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  FocusNode _fnPassword = new FocusNode();

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Colors.yellow[800],
                Colors.yellow[700],
                Colors.yellow[600],
                Colors.yellow[400],
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            size: 60,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            cursorColor: Colors.blueAccent,
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (v) {
                              FocusScope.of(context).requestFocus(_fnPassword);
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                prefixIcon: Icon(Icons.person),
                                focusColor: Colors.transparent,
                                focusedBorder: InputBorder.none),
                            validator: (text) {
                              if (text.isEmpty) {
                                return "Email can't be Empty";
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
                            textInputAction: TextInputAction.done,
                            focusNode: _fnPassword,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.vpn_key),
                                hintText: "Password",
                                focusedBorder: InputBorder.none),
                            obscureText: true,
                            validator: (text) {
                              if (text.isEmpty) {
                                return "Password can't be Empty";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RaisedButton(
                            padding: EdgeInsets.all(15),
                            child: Text("Login"),
                            textColor: Colors.white,
                            color: Color(0xFF06D5D7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            onPressed: () {
                              String email = _emailController.text.toString();
                              String password =
                                  _passwordController.text.toString();
                              if (_formKey.currentState.validate()) {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return VendorListing();
                                }));
                              }
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          RaisedButton(
                            child: Text("SignUp"),
                            padding:EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(25)),
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {});
                  },
                  child: Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(8),
                    child: const Text("Forgot Password?"),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  String validateEmail(String email) {
    if (email.isEmpty) {
      return "Email can't be Empty";
    }
    return null;
  }
}
