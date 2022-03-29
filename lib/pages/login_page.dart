import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static final id="login_page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController=  TextEditingController();
  TextEditingController passwordController=  TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green,
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
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 30),
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
                          height: 40,
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

                        SizedBox(height: 20,),
                        //Phone
                        Text("Number",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),),
                        TextFormField(

                          decoration: InputDecoration(
                            hintText: 'Enter Phone Number',
                            hintStyle: TextStyle(color: Colors.grey.shade300),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),


                          ),
                        ),
                        SizedBox(height: 20,),
                        //Password
                        Text("Address",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
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
                          height: 50,
                        ),

                        //#Sign Up button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          ),
                          child: Container(
                            height: 45,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(shape: BoxShape.circle),
                            child: const Text(
                              'Sign In',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(height: 10,),
                        Text("OR",style: TextStyle(color: Colors.grey.shade300,)),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.facebook, size: 20.0),
                            SizedBox(width: 10,),
                            Icon(FontAwesomeIcons.twitter, size: 20.0),
                            SizedBox(width: 10,),
                            Icon(FontAwesomeIcons.telegram, size:20.0),
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        //#Bottom
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",style:TextStyle(color: Colors.grey.shade800,fontSize: 15,fontWeight: FontWeight.bold) ,),
                            FlatButton(
                              onPressed: (){
                                //Navigator.pushNamed(context,SignInPage.id);
                              },
                              child: Text("Sign Up",style:TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold) ,),),
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
