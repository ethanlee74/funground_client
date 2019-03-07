import 'dart:convert';
import 'package:funground_client_lib/json_request.dart';
import 'package:funground_client_lib/user/model/user_model.dart';


class CreateUser extends JsonRequest {
  CreateUser(Uri host, User user) : super('PUT', _createUri(host)) {
    this.body =json.encode(user.toJson());
  }

  static Uri _createUri(Uri host) {
    return host.replace(path: 'user');
  }
}

class GetUser extends JsonRequest {
  GetUser(Uri host, int id) : super('GET', _createUri(host, id));

  static Uri _createUri(Uri host, int id) {
    return host.replace(path: '$id/user');
  }
}