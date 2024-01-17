//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_client_ip_config.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ClientIPConfig {
  /// Returns a new [V1ClientIPConfig] instance.
  V1ClientIPConfig({

     this.timeoutSeconds,
  });

      /// timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == \"ClientIP\". Default value is 10800(for 3 hours).
  @JsonKey(
    
    name: r'timeoutSeconds',
    required: false,
    includeIfNull: false
  )


  final int? timeoutSeconds;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ClientIPConfig &&
     other.timeoutSeconds == timeoutSeconds;

  @override
  int get hashCode =>
    timeoutSeconds.hashCode;

  factory V1ClientIPConfig.fromJson(Map<String, dynamic> json) => _$V1ClientIPConfigFromJson(json);

  Map<String, dynamic> toJson() => _$V1ClientIPConfigToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

