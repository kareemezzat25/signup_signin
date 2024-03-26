
import 'package:flutter/material.dart';
import 'package:signupandsignin/models/button.dart';

import 'package:signupandsignin/views/signup.dart';
import 'textForm.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String emailError = '';
  String passwordError = '';
  String genericError = ''; // Added to store generic error message
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Login to your account",
                  style: TextStyle(fontSize: 15, color: Colors.grey)),
              SizedBox(height: 60),
              
              const Padding(
                padding: EdgeInsets.only(left: 14),
                child: Row(
                  children: [
                    Text("Enter Email",
                        style: TextStyle(fontSize: 15, color: Colors.grey)),
                  ],
                ),
              ),
              TextForm(
                hintText: "Email",
                
              ),

              SizedBox(height: 15),
              // Display generic error message for any other errors

              Padding(
                padding: EdgeInsets.only(left: 14),
                child: Row(
                  children: [
                    Text("Enter password",
                        style: TextStyle(fontSize: 15, color: Colors.grey)),
                  ],
                ),
              ),
              TextForm(
                hintText: "Password",
                
                isPassword: true,
              ),

              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      // we edit it later
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Color(0xff4285F4)),
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 10),
              Button(
                buttonColor: Color(0xff01579B),
                buttonText: 'Sign in',
                textColor: Colors.white,
                onPressed: (){},
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Signup();
                      }));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(color: Color(0xff8D8D8D)),
                        ),
                        Text(
                          "Sign up",
                          style: TextStyle(color: Color(0xff0B570E)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
