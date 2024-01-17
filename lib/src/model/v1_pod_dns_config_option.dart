//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_dns_config_option.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodDNSConfigOption {
  /// Returns a new [V1PodDNSConfigOption] instance.
  V1PodDNSConfigOption({

     this.name,

     this.value,
  });

      /// Required.
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false
  )


  final String? value;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodDNSConfigOption &&
     other.name == name &&
     other.value == value;

  @override
  int get hashCode =>
    name.hashCode +
    value.hashCode;

  factory V1PodDNSConfigOption.fromJson(Map<String, dynamic> json) => _$V1PodDNSConfigOptionFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodDNSConfigOptionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

