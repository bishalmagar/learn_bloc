import 'dart:convert';

import 'package:learn_bloc/model/user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class UsersDataSource {

  String userUrl = "https://swapi.co/api/people/1";

  final http.Client httpClient;

  UsersDataSource({@required this.httpClient});


//user login api
  // ignore: missing_return
  Future<Users> fetchUser() async {

    final urlEncoded = Uri.parse(userUrl);


    //wait to encoded url
    final response = await httpClient.get(urlEncoded,
        headers: {
          "content-type": "application/json",
          "accept": "application/json",
        },);

    print("${response.body}");

    // debugPrint("${response.body.toString()}");
    final Map res = json.decode(response.body);

    if (response.statusCode == 200) {
      Users users = Users.fromJson(res);
      return users;
    }
  }



}