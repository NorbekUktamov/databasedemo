import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

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
          color: Colors.grey.shade100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 50),

            //#login,#welcome
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome back!",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                  )
                ],
              ),
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: SingleChildScrollView(
                  child: Padding(
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
                                //Navigator.pushNamed(context,SignInPage.id);
                              },
                              child: Text("SIGN IN",style:TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold) ,),),
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
