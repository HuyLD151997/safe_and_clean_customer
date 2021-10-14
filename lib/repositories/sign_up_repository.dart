import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:safe_and_clean_customer/models/customer.dart';

import '../contants.dart';

Future<String> signUp(Customer customer) async{
  try{
    final response = await http.post(
        Uri.parse('$LOGIN_URL/Customer'),
        body: customer.toJson(),
        headers: {HttpHeaders.contentTypeHeader: "application/json",});
    print(response.body);
    if (response.statusCode == 200) {
      return 'true';
    } else {
      return 'doubly';
    }
  }catch(exception){
    print(exception);
    return '0';
  }
}