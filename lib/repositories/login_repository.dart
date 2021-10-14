import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:safe_and_clean_customer/models/account.dart';
import '../contants.dart';


    /*final http.Client httpClient;
  //constructor
  LoginRepo({@required this.httpClient}): assert(httpClient != null);*/
    // post method
    Future<bool> checkLogin(Account account) async {
      try {

        final response = await http.post(
            Uri.parse("$LOGIN_URL/Auth"),
            body: account.toJson(),
            headers: {HttpHeaders.contentTypeHeader: "application/json",});
        print(response.statusCode);
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


