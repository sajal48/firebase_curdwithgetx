import 'package:firebase_curdwithgetx/controllers/auth_controller.dart';
import 'package:firebase_curdwithgetx/controllers/form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  var formCont = Get.put(FormController());
  var authCont = Get.put(AuthController());

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
          margin: EdgeInsets.fromLTRB(25, 25, 25, 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Welcome,",
                  style: TextStyle(
                      letterSpacing: .938,
                      fontSize: 48,
                      fontWeight: FontWeight.w200,
                      color: Color(0x99FFFFFF)),
                ),
                Text("Login to continue",
                    style: TextStyle(
                        letterSpacing: .938,
                        fontSize: 34,
                        fontWeight: FontWeight.w200,
                        color: Color(0x99FFFFFF))),
                Divider(
                  color: Color(0xFF707070),
                  thickness: 2,
                  height: 25,
                  endIndent: 91,
                ),
                SizedBox(
                  height: 65,
                ),
                TextFormField(
                  controller: formCont.namefield,
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
                  height: 65,
                ),
                Obx(() {
                  var isVisible = formCont.isPasswordvisible.value;
                  return TextFormField(
                    controller: formCont.passwordfield,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isVisible,
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
                          icon: isVisible
                              ? Icon(Icons.visibility_off,
                                  color: Color(0x61FFFFFF))
                              : Icon(
                                  Icons.visibility,
                                  color: Color(0xffbb86f6),
                                ),
                          onPressed: () {
                            isVisible
                                ? formCont.isPasswordvisible(false)
                                : formCont.isPasswordvisible(true);
                          },
                        )),
                  );
                }),
                SizedBox(
                  height: 65,
                ),
                Align(
                  child: Container(
                    width: 100,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xffbb86f6))),
                        onPressed: () {
                          authCont.signInWithCredential(formCont.namefield.text,
                              formCont.passwordfield.text);
                        },
                        child: Center(
                          child: Text("Login"),
                        )),
                  ),
                ),
                SizedBox(
                  height: 65,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(fontSize: 15, color: Color(0x99FFFFFF)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Sign up ",
                          style: TextStyle(
                              fontSize: 15, color: Color(0xffbb86f6))),
                    ),
                    Text("here",
                        style:
                            TextStyle(fontSize: 15, color: Color(0x99FFFFFF))),
                  ],
                ),
                Divider(
                  color: Color(0xFF707070),
                  thickness: 2,
                  height: 0,
                  indent: 206,
                  endIndent: 50,
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
