import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class AppConfig {
  final String host;
  AppConfig(this.host);

  Map<String, dynamic> toJson() => _$AppConfigToJson(this);
  factory AppConfig.fromJson(json) => _$AppConfigFromJson(json);
}
