//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_object_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ObjectReference {
  /// Returns a new [V1ObjectReference] instance.
  V1ObjectReference({

     this.apiVersion,

     this.fieldPath,

     this.kind,

     this.name,

     this.namespace,

     this.resourceVersion,

     this.uid,
  });

      /// API version of the referent.
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: \"spec.containers{name}\" (where \"name\" refers to the name of the container that triggered the event) or if no container name is specified \"spec.containers[2]\" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.
  @JsonKey(
    
    name: r'fieldPath',
    required: false,
    includeIfNull: false
  )


  final String? fieldPath;



      /// Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



      /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
  @JsonKey(
    
    name: r'namespace',
    required: false,
    includeIfNull: false
  )


  final String? namespace;



      /// Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
  @JsonKey(
    
    name: r'resourceVersion',
    required: false,
    includeIfNull: false
  )


  final String? resourceVersion;



      /// UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids
  @JsonKey(
    
    name: r'uid',
    required: false,
    includeIfNull: false
  )


  final String? uid;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ObjectReference &&
     other.apiVersion == apiVersion &&
     other.fieldPath == fieldPath &&
     other.kind == kind &&
     other.name == name &&
     other.namespace == namespace &&
     other.resourceVersion == resourceVersion &&
     other.uid == uid;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    fieldPath.hashCode +
    kind.hashCode +
    name.hashCode +
    namespace.hashCode +
    resourceVersion.hashCode +
    uid.hashCode;

  factory V1ObjectReference.fromJson(Map<String, dynamic> json) => _$V1ObjectReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$V1ObjectReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

