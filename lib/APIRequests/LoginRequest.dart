import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../Models/LoginModel.dart';

class APIRequests {

  Future<Token?> loginUser(LoginInfoPostBody postBody) async {
    final response = await http.post(Uri.parse("https://white-mountains-four-thousands.herokuapp.com/v1/users/login"),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: jsonEncode(postBody.toJson()));

    if (response.statusCode == 200) {
      return Token(token: jsonDecode(response.body));
    } else {
      print('Login request failed $response');
      return null;
    }
  }
}
