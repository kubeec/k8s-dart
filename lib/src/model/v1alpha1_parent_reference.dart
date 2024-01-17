//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_parent_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1ParentReference {
  /// Returns a new [V1alpha1ParentReference] instance.
  V1alpha1ParentReference({

     this.group,

     this.name,

     this.namespace,

     this.resource,

     this.uid,
  });

      /// Group is the group of the object being referenced.
  @JsonKey(
    
    name: r'group',
    required: false,
    includeIfNull: false
  )


  final String? group;



      /// Name is the name of the object being referenced.
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// Namespace is the namespace of the object being referenced.
  @JsonKey(
    
    name: r'namespace',
    required: false,
    includeIfNull: false
  )


  final String? namespace;



      /// Resource is the resource of the object being referenced.
  @JsonKey(
    
    name: r'resource',
    required: false,
    includeIfNull: false
  )


  final String? resource;



      /// UID is the uid of the object being referenced.
  @JsonKey(
    
    name: r'uid',
    required: false,
    includeIfNull: false
  )


  final String? uid;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1ParentReference &&
     other.group == group &&
     other.name == name &&
     other.namespace == namespace &&
     other.resource == resource &&
     other.uid == uid;

  @override
  int get hashCode =>
    group.hashCode +
    name.hashCode +
    namespace.hashCode +
    resource.hashCode +
    uid.hashCode;

  factory V1alpha1ParentReference.fromJson(Map<String, dynamic> json) => _$V1alpha1ParentReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1ParentReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

