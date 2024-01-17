//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_quobyte_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1QuobyteVolumeSource {
  /// Returns a new [V1QuobyteVolumeSource] instance.
  V1QuobyteVolumeSource({

     this.group,

     this.readOnly,

    required  this.registry,

     this.tenant,

     this.user,

    required  this.volume,
  });

      /// group to map volume access to Default is no group
  @JsonKey(
    
    name: r'group',
    required: false,
    includeIfNull: false
  )


  final String? group;



      /// readOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



      /// registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
  @JsonKey(
    
    name: r'registry',
    required: true,
    includeIfNull: false
  )


  final String registry;



      /// tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin
  @JsonKey(
    
    name: r'tenant',
    required: false,
    includeIfNull: false
  )


  final String? tenant;



      /// user to map volume access to Defaults to serivceaccount user
  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false
  )


  final String? user;



      /// volume is a string that references an already created Quobyte volume by name.
  @JsonKey(
    
    name: r'volume',
    required: true,
    includeIfNull: false
  )


  final String volume;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1QuobyteVolumeSource &&
     other.group == group &&
     other.readOnly == readOnly &&
     other.registry == registry &&
     other.tenant == tenant &&
     other.user == user &&
     other.volume == volume;

  @override
  int get hashCode =>
    group.hashCode +
    readOnly.hashCode +
    registry.hashCode +
    tenant.hashCode +
    user.hashCode +
    volume.hashCode;

  factory V1QuobyteVolumeSource.fromJson(Map<String, dynamic> json) => _$V1QuobyteVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1QuobyteVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

