//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_se_linux_options.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1SELinuxOptions {
  /// Returns a new [V1SELinuxOptions] instance.
  V1SELinuxOptions({

     this.level,

     this.role,

     this.type,

     this.user,
  });

      /// Level is SELinux level label that applies to the container.
  @JsonKey(
    
    name: r'level',
    required: false,
    includeIfNull: false
  )


  final String? level;



      /// Role is a SELinux role label that applies to the container.
  @JsonKey(
    
    name: r'role',
    required: false,
    includeIfNull: false
  )


  final String? role;



      /// Type is a SELinux type label that applies to the container.
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final String? type;



      /// User is a SELinux user label that applies to the container.
  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false
  )


  final String? user;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SELinuxOptions &&
     other.level == level &&
     other.role == role &&
     other.type == type &&
     other.user == user;

  @override
  int get hashCode =>
    level.hashCode +
    role.hashCode +
    type.hashCode +
    user.hashCode;

  factory V1SELinuxOptions.fromJson(Map<String, dynamic> json) => _$V1SELinuxOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$V1SELinuxOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

