//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_subject.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Subject {
  /// Returns a new [V1Subject] instance.
  V1Subject({

     this.apiGroup,

    required  this.kind,

    required  this.name,

     this.namespace,
  });

      /// APIGroup holds the API group of the referenced subject. Defaults to \"\" for ServiceAccount subjects. Defaults to \"rbac.authorization.k8s.io\" for User and Group subjects.
  @JsonKey(
    
    name: r'apiGroup',
    required: false,
    includeIfNull: false
  )


  final String? apiGroup;



      /// Kind of object being referenced. Values defined by this API group are \"User\", \"Group\", and \"ServiceAccount\". If the Authorizer does not recognized the kind value, the Authorizer should report an error.
  @JsonKey(
    
    name: r'kind',
    required: true,
    includeIfNull: false
  )


  final String kind;



      /// Name of the object being referenced.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// Namespace of the referenced object.  If the object kind is non-namespace, such as \"User\" or \"Group\", and this value is not empty the Authorizer should report an error.
  @JsonKey(
    
    name: r'namespace',
    required: false,
    includeIfNull: false
  )


  final String? namespace;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Subject &&
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

  factory V1Subject.fromJson(Map<String, dynamic> json) => _$V1SubjectFromJson(json);

  Map<String, dynamic> toJson() => _$V1SubjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

