//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_seccomp_profile.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1SeccompProfile {
  /// Returns a new [V1SeccompProfile] instance.
  V1SeccompProfile({

     this.localhostProfile,

    required  this.type,
  });

      /// localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is \"Localhost\".
  @JsonKey(
    
    name: r'localhostProfile',
    required: false,
    includeIfNull: false
  )


  final String? localhostProfile;



      /// type indicates which kind of seccomp profile will be applied. Valid options are:  Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SeccompProfile &&
     other.localhostProfile == localhostProfile &&
     other.type == type;

  @override
  int get hashCode =>
    localhostProfile.hashCode +
    type.hashCode;

  factory V1SeccompProfile.fromJson(Map<String, dynamic> json) => _$V1SeccompProfileFromJson(json);

  Map<String, dynamic> toJson() => _$V1SeccompProfileToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

