class Account {
  final String name;
  final String email;
  final String phone;
  final String password;


  Account({required this.email,required this.password,required this.name,required this.phone});
  //constructor that convert json to object instance
  Account.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        name = json['name'],
        phone = json['phone'],
        password=json['password'];
  //a method that convert object to json
  Map<String, dynamic> toJson() => {
    'email': email,
    'name': name,
    'phone': phone,
    'password':password,
  };
}