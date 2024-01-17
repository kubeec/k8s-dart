//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_secret.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Secret {
  /// Returns a new [V1Secret] instance.
  V1Secret({

     this.apiVersion,

     this.data,

     this.immutable,

     this.kind,

     this.metadata,

     this.stringData,

     this.type,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// Data contains the secret data. Each key must consist of alphanumeric characters, '-', '_' or '.'. The serialized form of the secret data is a base64 encoded string, representing the arbitrary (possibly non-string) data value here. Described in https://tools.ietf.org/html/rfc4648#section-4
  @JsonKey(
    
    name: r'data',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? data;



      /// Immutable, if set to true, ensures that data stored in the Secret cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
  @JsonKey(
    
    name: r'immutable',
    required: false,
    includeIfNull: false
  )


  final bool? immutable;



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



      /// stringData allows specifying non-binary secret data in string form. It is provided as a write-only input field for convenience. All keys and values are merged into the data field on write, overwriting any existing values. The stringData field is never output when reading from the API.
  @JsonKey(
    
    name: r'stringData',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? stringData;



      /// Used to facilitate programmatic handling of secret data. More info: https://kubernetes.io/docs/concepts/configuration/secret/#secret-types
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final String? type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Secret &&
     other.apiVersion == apiVersion &&
     other.data == data &&
     other.immutable == immutable &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.stringData == stringData &&
     other.type == type;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    data.hashCode +
    immutable.hashCode +
    kind.hashCode +
    metadata.hashCode +
    stringData.hashCode +
    type.hashCode;

  factory V1Secret.fromJson(Map<String, dynamic> json) => _$V1SecretFromJson(json);

  Map<String, dynamic> toJson() => _$V1SecretToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

