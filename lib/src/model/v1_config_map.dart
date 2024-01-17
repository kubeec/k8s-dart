//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_config_map.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ConfigMap {
  /// Returns a new [V1ConfigMap] instance.
  V1ConfigMap({

     this.apiVersion,

     this.binaryData,

     this.data,

     this.immutable,

     this.kind,

     this.metadata,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// BinaryData contains the binary data. Each key must consist of alphanumeric characters, '-', '_' or '.'. BinaryData can contain byte sequences that are not in the UTF-8 range. The keys stored in BinaryData must not overlap with the ones in the Data field, this is enforced during validation process. Using this field will require 1.10+ apiserver and kubelet.
  @JsonKey(
    
    name: r'binaryData',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? binaryData;



      /// Data contains the configuration data. Each key must consist of alphanumeric characters, '-', '_' or '.'. Values with non-UTF-8 byte sequences must use the BinaryData field. The keys stored in Data must not overlap with the keys in the BinaryData field, this is enforced during validation process.
  @JsonKey(
    
    name: r'data',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? data;



      /// Immutable, if set to true, ensures that data stored in the ConfigMap cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
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



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ConfigMap &&
     other.apiVersion == apiVersion &&
     other.binaryData == binaryData &&
     other.data == data &&
     other.immutable == immutable &&
     other.kind == kind &&
     other.metadata == metadata;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    binaryData.hashCode +
    data.hashCode +
    immutable.hashCode +
    kind.hashCode +
    metadata.hashCode;

  factory V1ConfigMap.fromJson(Map<String, dynamic> json) => _$V1ConfigMapFromJson(json);

  Map<String, dynamic> toJson() => _$V1ConfigMapToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

