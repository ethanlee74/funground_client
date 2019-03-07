import 'package:requester/requester.dart';
import 'dart:convert';

import 'package:funground_client_lib/user/service/user_requests.dart' as userRequest;
import 'package:funground_client_lib/user/model/user_model.dart';

class UserService {
  final Requester requester;
  final Uri host;

  UserService(this.requester, this.host);

  Future<User> create(User user) async {
    var request = new userRequest.CreateUser(host, user);
    var response = await requester.send(request);
    return new User.fromJson(json.decode(response.body));
  }

  Future<User> getUser(int id) async {
    var request = new userRequest.GetUser(host, id);
    var response = await requester.send(request);
    return new User.fromJson(json.decode(response.body));
  }
}