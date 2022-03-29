import 'package:databasedemo/models/user_model.dart';
import 'package:databasedemo/utils/db_service.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  static final id="home_page";

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final usernameController=TextEditingController();
  final passwordController=TextEditingController();

  void _doLogin(){


    String username=usernameController.text.toString().trim();
    String password =passwordController.text.toString().trim();

    var user=User(email: username, password: password);

    HiveDB().setUser(user);

    var user2=HiveDB().getUser();

    print(user2.password);
    print(user2.email);


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                hintText: "Username",
                icon: Icon(Icons.email),

              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Password",
                icon: Icon(Icons.lock),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                _doLogin();
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
