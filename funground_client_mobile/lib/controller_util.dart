import 'dart:async';

import 'package:http/http.dart';
import 'package:flutter/services.dart';

import 'package:funground_client_lib/controller.dart';
import 'package:funground_client_lib/service.dart';
import 'package:funground_client_lib/model.dart';

AppController controller;

void init() {
  var client = new Client();
  var configService = new FlutterConfigService(client);
  var services = new AppServices(client, configService);
  controller = new AppController(services);
  controller.init();
}

class FlutterConfigService extends ConfigService {
  FlutterConfigService(Client client) : super(client);

  Future<AppConfig> loadConfig() async {
    var configYaml = await rootBundle.loadString('assets/config.yaml');
    return parseYaml(configYaml);
  }
}