//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_os.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodOS {
  /// Returns a new [V1PodOS] instance.
  V1PodOS({

    required  this.name,
  });

      /// Name is the name of the operating system. The currently supported values are linux and windows. Additional value may be defined in future and can be one of: https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodOS &&
     other.name == name;

  @override
  int get hashCode =>
    name.hashCode;

  factory V1PodOS.fromJson(Map<String, dynamic> json) => _$V1PodOSFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodOSToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

