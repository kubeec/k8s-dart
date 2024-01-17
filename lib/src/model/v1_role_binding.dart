//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_subject.dart';
import 'package:k8s/src/model/v1_role_ref.dart';
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_role_binding.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1RoleBinding {
  /// Returns a new [V1RoleBinding] instance.
  V1RoleBinding({

     this.apiVersion,

     this.kind,

     this.metadata,

    required  this.roleRef,

     this.subjects,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false
  )


  final V1ObjectMeta? metadata;



  @JsonKey(
    
    name: r'roleRef',
    required: true,
    includeIfNull: false
  )


  final V1RoleRef roleRef;



      /// Subjects holds references to the objects the role applies to.
  @JsonKey(
    
    name: r'subjects',
    required: false,
    includeIfNull: false
  )


  final List<V1Subject>? subjects;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1RoleBinding &&
     other.apiVersion == apiVersion &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.roleRef == roleRef &&
     other.subjects == subjects;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    kind.hashCode +
    metadata.hashCode +
    roleRef.hashCode +
    subjects.hashCode;

  factory V1RoleBinding.fromJson(Map<String, dynamic> json) => _$V1RoleBindingFromJson(json);

  Map<String, dynamic> toJson() => _$V1RoleBindingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

