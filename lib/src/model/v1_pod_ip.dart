//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_ip.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodIP {
  /// Returns a new [V1PodIP] instance.
  V1PodIP({

     this.ip,
  });

      /// ip is an IP address (IPv4 or IPv6) assigned to the pod
  @JsonKey(
    
    name: r'ip',
    required: false,
    includeIfNull: false
  )


  final String? ip;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodIP &&
     other.ip == ip;

  @override
  int get hashCode =>
    ip.hashCode;

  factory V1PodIP.fromJson(Map<String, dynamic> json) => _$V1PodIPFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodIPToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

