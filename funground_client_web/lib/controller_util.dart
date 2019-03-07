import 'dart:async';
import 'dart:html' hide Client;

import 'package:http/http.dart';
import 'package:http/browser_client.dart';
import 'package:funground_client_lib/service.dart';
import 'package:funground_client_lib/model.dart';
import 'package:funground_client_lib/controller.dart';

AppController controller;

void init() {
  var client = new BrowserClient();
  var configService = new BrowserConfigService(client);
  var services = new AppServices(client, configService);
  controller = new AppController(services);
}

class BrowserConfigService extends ConfigService {
  BrowserConfigService(Client c) : super(c);

  Future<AppConfig> loadConfig() async {
    var host = Uri.parse(window.location.href);
    var u = host.replace(path: '/config.yaml');
    var response = await client.get(u);
    return parseYaml(response.body);
  }
}