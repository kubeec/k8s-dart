//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_client_ip_config.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_session_affinity_config.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1SessionAffinityConfig {
  /// Returns a new [V1SessionAffinityConfig] instance.
  V1SessionAffinityConfig({

     this.clientIP,
  });

  @JsonKey(
    
    name: r'clientIP',
    required: false,
    includeIfNull: false
  )


  final V1ClientIPConfig? clientIP;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SessionAffinityConfig &&
     other.clientIP == clientIP;

  @override
  int get hashCode =>
    clientIP.hashCode;

  factory V1SessionAffinityConfig.fromJson(Map<String, dynamic> json) => _$V1SessionAffinityConfigFromJson(json);

  Map<String, dynamic> toJson() => _$V1SessionAffinityConfigToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

