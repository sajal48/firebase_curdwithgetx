import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: size.height,
        width: size.width,
        color: Color(0xFF444444),
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 30, 15, 20),
          child: Column(
            children: [Text("Wellcome")],
          ),
        ),
      )),
    );
  }
}
