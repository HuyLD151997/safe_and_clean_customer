
import 'package:equatable/equatable.dart';

class Account extends Equatable{
  final String username;
  final String password;

  const Account({
     this.username,
     this.password});

  @override
  // TODO: implement props
  List<Object> get props => [
    username,
    password,
  ];

  factory Account.fromJson(Map<String, dynamic> json) => Account(
    username: json["username"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
  };
}
