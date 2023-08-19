import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/model.dart';

Future<User>fetchData() async{
  var responce = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
var user= jsonDecode(responce.body);
  return User.fromJson(user);
}