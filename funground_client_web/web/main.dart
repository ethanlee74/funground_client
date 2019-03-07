import 'dart:html';

import 'package:react/react_client.dart' as react_client;
import 'package:react/react.dart';
import 'package:react/react_dom.dart' as react_dom;
import 'package:funground_client_web/controller_util.dart' as controllerUtil;

void main() {
  // querySelector('#output').text = 'Your Dart app is running.';
  if(controllerUtil.controller == null) {
    controllerUtil.init();
  }
  // This should be called once at the beginning of the application.
  react_client.setClientConfiguration();

  // Something to render... in this case a simple <div> with no props, and a string as its children.
  var component = div({}, "Hello world!");
  
  // Render it into the mount node we created in our .html file. 
  react_dom.render(component, querySelector('#output'));
}
