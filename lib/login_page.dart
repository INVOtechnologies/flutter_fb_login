import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

typedef void OnClickFunction(addressId);

class LoginPage extends StatefulWidget {
  final FacebookUserProfile profile;
  final String imageUrl;
  final String email;
  LoginPage({this.profile, this.imageUrl, this.email});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network('${widget.imageUrl}', width: 100, height: 100),
                Text('${widget.profile.name}'),
                Text('ID: ${widget.profile.userId}'),
                Text('Email: ${widget.email}'),
              ]),
        ));
  }
}
