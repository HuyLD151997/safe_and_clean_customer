import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;


    /*final http.Client httpClient;
  //constructor
  LoginRepo({@required this.httpClient}): assert(httpClient != null);*/
    // post method
    Future<bool> checkLogin(String username, String password) async {
      try {
        var param = {
          /*"username": "admin",
      "password": "123456"*/
          "username": username,
          "password": password,
        };
        final response = await http.post(
            Uri.parse("LOGIN_URL"),
            body: json.encode(param),
            headers: {HttpHeaders.contentTypeHeader: "application/json",});
        print(response.body);
        if (response.statusCode == 200) {
          final String result = response.body;
          return true;
        } else {
          return false;
        }
      } catch (err) {
        print('Call api err: ' + err.toString());
        return false;
      }
    }


