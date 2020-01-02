import 'package:flutter/material.dart';
import 'package:needs/ui/vendor/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.black26,
            padding: EdgeInsets.all(24),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(''),
                    ),
                  ),
                  Form(
                      key: emailFormKey,
                      child: TextField(
                        autofocus: false,
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.amberAccent,
                                    style: BorderStyle.solid))),
                      )),
                  Form(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0))),
                    ),
                  ),
                  RaisedButton(
                    textColor: Colors.transparent,
                    color: Colors.green,
                    child: Text("LOGIN"),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    textColor: Colors.transparent,
                    color: Colors.green,
                    child: Text("Sign Up"),
                    onPressed: () {
                      SignUp();
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
