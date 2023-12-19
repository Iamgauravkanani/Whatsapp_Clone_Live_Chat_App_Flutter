import 'package:flutter/material.dart';

import '../../../utils/constant/constant.dart';
import 'Components/Widgets/Buttons/buttons.dart';

class Login extends StatelessWidget {
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: Constant.formKey,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset("assets/Login_Screen_Assets/tct.png"),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: Constant.email_con,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "enter valid email";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (val) {
                        Constant.email = val;
                      },
                      decoration: const InputDecoration(
                        hintText: "enter email here..",
                        // border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: Constant.password_con,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "enter valid password";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (val) {
                        Constant.password = val;
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "enter password here..",
                        // border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              //login button
              Buttons.loginButton(),
              SizedBox(
                height: 10,
              ),
              //sign up Button
              Buttons.signupButton(),
              SizedBox(
                height: 20,
              ),
              //Google Login Button
              Buttons.googleSigninButton(),
            ],
          ),
        ),
      ),
    );
  }
}
