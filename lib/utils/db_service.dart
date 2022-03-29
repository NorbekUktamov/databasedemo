import 'package:databasedemo/models/account_model.dart';
import 'package:hive/hive.dart';
import '../models/user_model.dart';

class HiveDB{

  var box =Hive.box("hive_database");
  var box1 =Hive.box("hive_database1");

  void setUser(User user) async {
    box.put('user',user.toJson());
  }

  User getUser() {
    var user = User.fromJson(box.get("user"));
    return user;
  }
  void setAccount(Account account) async {
    box1.put('account',account.toJson());
  }
  Account getAccount() {
    var account = Account.fromJson(box1.get("account"));
    return account;
  }

}