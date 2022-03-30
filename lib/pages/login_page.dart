import 'package:databasedemo/pages/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/user_model.dart';
import '../utils/db_service.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static final id="login_page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController=  TextEditingController();
  TextEditingController passwordController=  TextEditingController();

  void _doLogin(){



    String email=emailController.text.toString().trim();
    String password =passwordController.text.toString().trim();

    if(email.isNotEmpty && password.isNotEmpty){
      Navigator.pushNamed(context,Homepage.id);
    }

    var user=User(email: email, password: password);


    HiveDB().setUser(user);

    var user2=HiveDB().getUser();


    print("Password:"+user2.password);
    print("Email:"+user2.email);


  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(7, 127, 123 ,1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            //#login,#welcome
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //image
                  ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(38), // Image radius
                      child:Image(
                        image:AssetImage('assets/images/ic_image.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        color: Color.fromRGBO(33, 158, 154,1),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        //#registration
                        //User name
                        Text("Email",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),

                        //Email
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Enter E-mail',
                            hintStyle: TextStyle(color: Colors.grey.shade300),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),


                          ),
                        ),

                        SizedBox(height: 40,),
                        //Password
                        Text("Password",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            hintStyle: TextStyle(color: Colors.grey.shade300),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),

                          ),
                        ),

                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child:Text("Forgot Password?",style: TextStyle(color: Colors.grey.shade300,)) ,
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        //#Sign Up button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(7, 127, 123 ,1),
                          ),
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(

                            ),
                            child: const Text(
                              'Sign In',
                              style: TextStyle(fontSize: 20,color: Color.fromRGBO(162, 207, 205 ,1)),
                            ),
                          ),
                          onPressed: () {
                            _doLogin();
                          },
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child:Text("OR",style: TextStyle(color: Colors.grey.shade300,)) ,
                        ),
                        SizedBox(height: 30,),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.facebook,color:Colors.indigo, size: 20.0),
                            SizedBox(width: 40,),
                            Icon(FontAwesomeIcons.github,color: Colors.black, size: 20.0),
                            SizedBox(width: 40,),
                            Icon(FontAwesomeIcons.telegram,color: Colors.blue, size:20.0),
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        //#Bottom
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",style:TextStyle(color: Colors.grey.shade300,fontSize: 15,fontWeight: FontWeight.bold) ,),
                            FlatButton(
                              onPressed: (){
                                Navigator.pushNamed(context,RegisterPage.id);
                              },
                              child: Text("Sign In",style:TextStyle(color:Color.fromRGBO(7, 127, 123 ,1),fontSize: 15,fontWeight: FontWeight.bold) ,),),
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
