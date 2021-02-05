import 'package:flutter/material.dart';
import 'package:flutter_application_2/navDrawer.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  var usernameTxt = '';
  var passwordTxt = '';
  var ctxScaffold;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Builder(builder: (BuildContext ctx) {
          ctxScaffold = ctx;
          return Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Username'),
                  onChanged: (String e) {
                    setState(() {
                      usernameTxt = e;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Password'),
                  onChanged: (String e) {
                    setState(() {
                      passwordTxt = e;
                    });
                  },
                ),
              ),
              RaisedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (usernameTxt == '') {
                    Scaffold.of(ctxScaffold).showSnackBar(SnackBar(
                      content: Text('Username is empty'),
                    ));
                  } else if (passwordTxt == '') {
                    Scaffold.of(ctxScaffold).showSnackBar(SnackBar(
                      content: Text('Password is empty'),
                    ));
                  } else {
                    Navigator.push(ctxScaffold,
                        MaterialPageRoute(builder: (builder) {
                      return NavDrawer();
                    }));
                  }
                },
              ),
            ],
          );
        }));
  }
}
