import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:requester/requester.dart';
import 'model.dart';
import 'package:yaml/yaml.dart';

import 'package:funground_client_lib/user/service/user_service.dart';

class AppServices {
  final Client client;
  final ConfigService config;
  final Requester requester;

  UserService _userService;

  UserService get userService => _userService;

  AppServices(this.client, this.config) : requester = new Requester(client);

  void createServices(Uri host) {
    this._userService = new UserService(requester, host);
  }
}

/// [ConfigService] is used to allow apps to be configured to run against other
/// servers.
///
/// Loads and parses a YAML configuration into an [AppConfig]
abstract class ConfigService {
  final Client client;

  ConfigService(this.client);

  Future<AppConfig> loadConfig();

  AppConfig parseYaml(String str) {
    YamlMap yaml = loadYaml(str);
    Map<String, dynamic> map = new Map();
    yaml.forEach((k, v) => map[k] = v);
    return new AppConfig.fromJson(map);
  }
}