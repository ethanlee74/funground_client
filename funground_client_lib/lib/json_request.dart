import 'dart:convert';
import 'package:http/http.dart';

class JsonRequest extends Request {
  JsonRequest(String method, Uri uri) : super(method, uri) {
    this.headers['Content-Type'] = 'application/json';
  }
}