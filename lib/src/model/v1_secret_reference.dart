//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_secret_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1SecretReference {
  /// Returns a new [V1SecretReference] instance.
  V1SecretReference({

     this.name,

     this.namespace,
  });

      /// name is unique within a namespace to reference a secret resource.
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// namespace defines the space within which the secret name must be unique.
  @JsonKey(
    
    name: r'namespace',
    required: false,
    includeIfNull: false
  )


  final String? namespace;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SecretReference &&
     other.name == name &&
     other.namespace == namespace;

  @override
  int get hashCode =>
    name.hashCode +
    namespace.hashCode;

  factory V1SecretReference.fromJson(Map<String, dynamic> json) => _$V1SecretReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$V1SecretReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

