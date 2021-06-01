import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF444444),
      body: SafeArea(
          child: Container(
        height: size.height,
        width: size.width,
        color: Color(0xFF444444),
        child: Container(
          margin: EdgeInsets.fromLTRB(25, 45, 25, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome,",
                style: TextStyle(
                    letterSpacing: 9.38,
                    fontSize: 48,
                    fontWeight: FontWeight.w200,
                    color: Color(0x99FFFFFF)),
              ),
              Text("Login to continue",
                  style: TextStyle(
                      letterSpacing: 5,
                      fontSize: 34,
                      fontWeight: FontWeight.w200,
                      color: Color(0x99FFFFFF))),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Color(0xFF707070),
                thickness: 2,
                height: 10,
                indent: 0,
                endIndent: 10.5,
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(color: Color(0xffbb86f6)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffbb86f6), width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x61FFFFFF),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Pasword",
                    labelStyle: TextStyle(color: Color(0xffbb86f6)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffbb86f6), width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x61FFFFFF),
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () {},
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                child: Container(
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Center(
                        child: Text("Login"),
                      )),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont have an account? ",
                        style:
                            TextStyle(fontSize: 15, color: Color(0x99FFFFFF)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Sign up ",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xffbb86f6))),
                      ),
                      Text("here",
                          style:
                              TextStyle(fontSize: 15, color: Color(0x99FFFFFF)))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
