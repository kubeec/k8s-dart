//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1beta2_service_account_subject.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta2ServiceAccountSubject {
  /// Returns a new [V1beta2ServiceAccountSubject] instance.
  V1beta2ServiceAccountSubject({

    required  this.name,

    required  this.namespace,
  });

      /// `name` is the name of matching ServiceAccount objects, or \"*\" to match regardless of name. Required.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// `namespace` is the namespace of matching ServiceAccount objects. Required.
  @JsonKey(
    
    name: r'namespace',
    required: true,
    includeIfNull: false
  )


  final String namespace;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta2ServiceAccountSubject &&
     other.name == name &&
     other.namespace == namespace;

  @override
  int get hashCode =>
    name.hashCode +
    namespace.hashCode;

  factory V1beta2ServiceAccountSubject.fromJson(Map<String, dynamic> json) => _$V1beta2ServiceAccountSubjectFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta2ServiceAccountSubjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

