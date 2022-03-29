import 'package:databasedemo/pages/home_page.dart';
import 'package:databasedemo/pages/login_page.dart';
import 'package:databasedemo/pages/register_page.dart';
import 'package:databasedemo/pages/sign_in_page.dart';
import 'package:databasedemo/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

void main() async {

  await Hive.initFlutter();
  await Hive.openBox('Hive_database');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: RegisterPage(),
      routes: {
        Homepage.id:(context)=>Homepage(),
        SignUpPage.id:(context)=>SignUpPage(),
        SignInPage.id:(context)=>SignInPage(),
        LoginPage.id:(context)=>LoginPage(),
        RegisterPage.id:(context)=>RegisterPage(),
      },
    );
  }
}
