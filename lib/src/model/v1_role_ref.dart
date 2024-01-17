//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_role_ref.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1RoleRef {
  /// Returns a new [V1RoleRef] instance.
  V1RoleRef({

    required  this.apiGroup,

    required  this.kind,

    required  this.name,
  });

      /// APIGroup is the group for the resource being referenced
  @JsonKey(
    
    name: r'apiGroup',
    required: true,
    includeIfNull: false
  )


  final String apiGroup;



      /// Kind is the type of resource being referenced
  @JsonKey(
    
    name: r'kind',
    required: true,
    includeIfNull: false
  )


  final String kind;



      /// Name is the name of resource being referenced
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1RoleRef &&
     other.apiGroup == apiGroup &&
     other.kind == kind &&
     other.name == name;

  @override
  int get hashCode =>
    apiGroup.hashCode +
    kind.hashCode +
    name.hashCode;

  factory V1RoleRef.fromJson(Map<String, dynamic> json) => _$V1RoleRefFromJson(json);

  Map<String, dynamic> toJson() => _$V1RoleRefToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

