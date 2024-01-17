//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_delete_options.dart';
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_eviction.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Eviction {
  /// Returns a new [V1Eviction] instance.
  V1Eviction({

     this.apiVersion,

     this.deleteOptions,

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



  @JsonKey(
    
    name: r'deleteOptions',
    required: false,
    includeIfNull: false
  )


  final V1DeleteOptions? deleteOptions;



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
  bool operator ==(Object other) => identical(this, other) || other is V1Eviction &&
     other.apiVersion == apiVersion &&
     other.deleteOptions == deleteOptions &&
     other.kind == kind &&
     other.metadata == metadata;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    deleteOptions.hashCode +
    kind.hashCode +
    metadata.hashCode;

  factory V1Eviction.fromJson(Map<String, dynamic> json) => _$V1EvictionFromJson(json);

  Map<String, dynamic> toJson() => _$V1EvictionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

