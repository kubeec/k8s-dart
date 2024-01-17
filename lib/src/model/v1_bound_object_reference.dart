//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_bound_object_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1BoundObjectReference {
  /// Returns a new [V1BoundObjectReference] instance.
  V1BoundObjectReference({

     this.apiVersion,

     this.kind,

     this.name,

     this.uid,
  });

      /// API version of the referent.
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



      /// Name of the referent.
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// UID of the referent.
  @JsonKey(
    
    name: r'uid',
    required: false,
    includeIfNull: false
  )


  final String? uid;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1BoundObjectReference &&
     other.apiVersion == apiVersion &&
     other.kind == kind &&
     other.name == name &&
     other.uid == uid;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    kind.hashCode +
    name.hashCode +
    uid.hashCode;

  factory V1BoundObjectReference.fromJson(Map<String, dynamic> json) => _$V1BoundObjectReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$V1BoundObjectReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

