import 'package:databasedemo/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'home_page.dart';



class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  static final id = "sign_in_page";

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
   TextEditingController emailController = TextEditingController();
   TextEditingController passwordController = TextEditingController();


  void _doLogin() {


    String email=emailController.text.toString().trim();
    String password =passwordController.text.toString().trim();

    if(email.isNotEmpty && password.isNotEmpty){
      Navigator.pushNamed(context,Homepage.id);
    }

    var box= Hive.box('Hive_database');
    box.put(email, 'email');
    box.put(password, 'password');


    String user_email=box.get('email');
    String user_password=box.get('password');

    print("Password:"+user_password);
    print("Email:"+user_email);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(28, 28, 55, 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            //#login,#welcome
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 90,
                    width: 90,
                    child: Image(
                      image: AssetImage("assets/images/ic_image.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign in to continue",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                ],
              ),
              ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //#registration
                        //User name

                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: emailController,
                          decoration: InputDecoration(
                            prefixIconConstraints:
                            BoxConstraints(minWidth: 23, maxHeight: 20),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.person,
                                color: Colors.white38,
                              ),
                            ),
                            hintText: 'User Name',
                            hintStyle: TextStyle(color: Colors.white38),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white38),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white38),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        //Password
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: passwordController,
                          decoration: InputDecoration(
                            prefixIconConstraints:
                            BoxConstraints(minWidth: 23, maxHeight: 20),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.lock,
                                color: Colors.white38,
                              ),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white38),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white38),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white38),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.white38,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50,
                        ),

                        //#Sign Up button
                        FlatButton(
                          onPressed: () {
                            _doLogin();
                          },
                          child: Container(
                            height: 90,
                            width: 90,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(colors: [
                                Colors.indigo,
                                Colors.blue.shade400,
                              ], end: Alignment.topRight, begin: Alignment.topLeft),
                            ),
                            child: Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        //#Bottom
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  color: Colors.white38,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, SignUpPage.id);
                              },
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
