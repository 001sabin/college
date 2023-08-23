// ignore_for_file: prefer_const_constructors

import 'package:college_app/screens/main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();

  late TextEditingController emailController;
  late TextEditingController passwordController;

  bool showPassword = false;

  void loginData() {
    if (emailController.text == "1" && passwordController.text == "1") {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => MainPage(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Invalid Email or Password",
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          // padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: [
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.always,
                  child: Column(
                children: [
                  SizedBox(height: 24),
                  Image.asset(
                    "assets/image/jerry1.jpg",
                    height: 300,
                  ),
                  Text(
                    "Learning App",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 48),
                  Text(
                    "Enter your login details to access your account",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 36),
                  SizedBox(height: 36),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Student Id",
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    
                    controller: passwordController,
                    obscureText: !showPassword,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          showPassword = !showPassword;
                        });
                      }, icon: showPassword?Icon(Icons.visibility):Icon(Icons.visibility_off),),
                      border: OutlineInputBorder(),
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: rememberMe,
                            onChanged: (bool? val) {
                              setState(() {
                                rememberMe = val!;
                              });
                            },
                          ),
                          Text("Remember Me?"),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                    loginData();
                    },
                    child: Text("LOGIN"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
