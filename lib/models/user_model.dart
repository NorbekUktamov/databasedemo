class User {
   //final String name;
  final String email;
  // final String phone;
  final String password;


  User({required this.email,required this.password,});
  //constructor that convert json to object instance
  User.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        password=json['password'];
  //a method that convert object to json
  Map<String, dynamic> toJson() => {
    'email': email,

    'password':password,
  };
}