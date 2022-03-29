class User {
   final String name;
  // final String email;
  // final String phone;
  final String password;


  User({required this.name,required this.password});
  //constructor that convert json to object instance
  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        password=json['password'];
  //a method that convert object to json
  Map<String, dynamic> toJson() => {
    'name': name,

    'password':password,
  };
}