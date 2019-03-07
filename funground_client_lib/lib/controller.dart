import 'dart:async';

import 'package:funground_client_lib/service.dart';
import 'package:funground_client_lib/user/service/user_service.dart';
import 'package:funground_client_lib/user/model/user_model.dart';

class AppController {
  AppServices _services;

  AppController(this._services);

  UserService get _userService => _services.userService;

  Future init() async {
    // Load the app configuration
    var config = await _services.config.loadConfig();
    var uri = Uri.parse(config.host);

    // Create the election service
    _services.createServices(uri);
  }

  Future<User> createUser(User user) async {
    return _userService.create(user);
  }

  Future<User> getUser(int id) async {
    return await _userService.getUser(id);
  }

}