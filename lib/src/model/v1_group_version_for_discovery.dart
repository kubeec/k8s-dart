//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_group_version_for_discovery.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1GroupVersionForDiscovery {
  /// Returns a new [V1GroupVersionForDiscovery] instance.
  V1GroupVersionForDiscovery({

    required  this.groupVersion,

    required  this.version,
  });

      /// groupVersion specifies the API group and version in the form \"group/version\"
  @JsonKey(
    
    name: r'groupVersion',
    required: true,
    includeIfNull: false
  )


  final String groupVersion;



      /// version specifies the version in the form of \"version\". This is to save the clients the trouble of splitting the GroupVersion.
  @JsonKey(
    
    name: r'version',
    required: true,
    includeIfNull: false
  )


  final String version;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1GroupVersionForDiscovery &&
     other.groupVersion == groupVersion &&
     other.version == version;

  @override
  int get hashCode =>
    groupVersion.hashCode +
    version.hashCode;

  factory V1GroupVersionForDiscovery.fromJson(Map<String, dynamic> json) => _$V1GroupVersionForDiscoveryFromJson(json);

  Map<String, dynamic> toJson() => _$V1GroupVersionForDiscoveryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

