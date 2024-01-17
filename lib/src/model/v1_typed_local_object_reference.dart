//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_typed_local_object_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1TypedLocalObjectReference {
  /// Returns a new [V1TypedLocalObjectReference] instance.
  V1TypedLocalObjectReference({

     this.apiGroup,

    required  this.kind,

    required  this.name,
  });

      /// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  @JsonKey(
    
    name: r'apiGroup',
    required: false,
    includeIfNull: false
  )


  final String? apiGroup;



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
  bool operator ==(Object other) => identical(this, other) || other is V1TypedLocalObjectReference &&
     other.apiGroup == apiGroup &&
     other.kind == kind &&
     other.name == name;

  @override
  int get hashCode =>
    apiGroup.hashCode +
    kind.hashCode +
    name.hashCode;

  factory V1TypedLocalObjectReference.fromJson(Map<String, dynamic> json) => _$V1TypedLocalObjectReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$V1TypedLocalObjectReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

