class Customer {
  Customer({
    required this.username,
    required this.password,
    required this.fullname,
    required this.gender,
    required this.birthday,
    required this.address,
    required this.phoneNumber,
    required this.email,
  });

  String username;
  String password;
  String fullname;
  String gender;
  DateTime birthday;
  String address;
  String phoneNumber;
  String email;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
    username: json["username"],
    password: json["password"],
    fullname: json["fullname"],
    gender: json["gender"],
    birthday: DateTime.parse(json["birthday"]),
    address: json["address"],
    phoneNumber: json["phoneNumber"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
    "fullname": fullname,
    "gender": gender,
    "birthday": birthday.toIso8601String(),
    "address": address,
    "phoneNumber": phoneNumber,
    "email": email,
  };
}
