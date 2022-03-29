
import 'package:databasedemo/pages/sign_in_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class SignUpPage extends StatefulWidget {

  const SignUpPage({Key? key}) : super(key: key);
  static final id = "sign_up_page";


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {


  TextEditingController emailController=  TextEditingController();
  TextEditingController passwordController=  TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController phoneController=TextEditingController();

  void _doLogin() {

    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    String name = nameController.text.toString().trim();
    String phone = phoneController.text.toString().trim();

    if(email.isNotEmpty && password.isNotEmpty){
      Navigator.pushNamed(context,Homepage.id);
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(28, 28, 55 ,1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 80),
            //#login,#welcome
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Create",
                    style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Account",
                    style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  //#registration
                  //User name
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      prefixIconConstraints:BoxConstraints(minWidth: 23, maxHeight: 20),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.person,
                          color: Colors.white38,
                        ),),
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

                  SizedBox(height: 20,),
                  //Email
                  TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIconConstraints:BoxConstraints(minWidth: 23, maxHeight: 20),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.email,
                            color: Colors.white38,
                          ),),
                          hintText: 'E-mail',
                          hintStyle: TextStyle(color: Colors.white38),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white38),
                          ),


                      ),
                    ),

                  SizedBox(height: 20,),
                  //Phone
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      prefixIconConstraints:BoxConstraints(minWidth: 23, maxHeight: 20),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.phone,
                          color: Colors.white38,
                        ),),
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(color: Colors.white38),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white38),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white38),
                      ),


                    ),
                  ),
                  SizedBox(height: 20,),
                  //Password
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      prefixIconConstraints:BoxConstraints(minWidth: 23, maxHeight: 20),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.lock,
                          color: Colors.white38,
                        ),),
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
                    height: 60,
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
                        gradient: LinearGradient(
                            colors: [Colors.indigo,Colors.blue.shade400,],
                            end: Alignment.topRight,
                            begin: Alignment.topLeft
                        ),

                      ),

                      child: Icon(Icons.arrow_forward_outlined,color: Colors.white,size:30,),
                    ),),
                  SizedBox(
                    height: 80,
                  ),
                  //#Bottom
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",style:TextStyle(color: Colors.grey.shade800,fontSize: 15,fontWeight: FontWeight.bold) ,),
                      FlatButton(
                        onPressed: (){
                          Navigator.pushNamed(context,SignInPage.id);
                        },
                        child: Text("SIGN IN",style:TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold) ,),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}