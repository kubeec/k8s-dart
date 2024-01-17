//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_typed_object_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1TypedObjectReference {
  /// Returns a new [V1TypedObjectReference] instance.
  V1TypedObjectReference({

     this.apiGroup,

    required  this.kind,

    required  this.name,

     this.namespace,
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



      /// Namespace is the namespace of resource being referenced Note that when a namespace is specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource feature gate to be enabled.
  @JsonKey(
    
    name: r'namespace',
    required: false,
    includeIfNull: false
  )


  final String? namespace;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1TypedObjectReference &&
     other.apiGroup == apiGroup &&
     other.kind == kind &&
     other.name == name &&
     other.namespace == namespace;

  @override
  int get hashCode =>
    apiGroup.hashCode +
    kind.hashCode +
    name.hashCode +
    namespace.hashCode;

  factory V1TypedObjectReference.fromJson(Map<String, dynamic> json) => _$V1TypedObjectReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$V1TypedObjectReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

