import 'package:hive/hive.dart';

import '../models/user_model.dart';

class HiveDB{

  var box =Hive.box("hive_database");

  void setUser(User user) async {
    box.put('user',user.toJson());
  }

  User getUser() {
    var user = User.fromJson(box.get("user"));
    return user;
  }

  void removeUser(){
    box.delete("user");
  }
  

}