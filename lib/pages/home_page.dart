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


  // var account2=HiveDB().getAccount();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome",),

            // Text(account2.password),
            // Text(account2.email),
            // Text(account2.phone),
            // Text(account2.name),

          ],
        ),
      ),
    );
  }
}
