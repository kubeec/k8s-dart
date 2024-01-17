//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:k8s/src/model/v1_overhead.dart';
import 'package:k8s/src/model/v1_scheduling.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_runtime_class.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1RuntimeClass {
  /// Returns a new [V1RuntimeClass] instance.
  V1RuntimeClass({

     this.apiVersion,

    required  this.handler,

     this.kind,

     this.metadata,

     this.overhead,

     this.scheduling,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called \"runc\" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
  @JsonKey(
    
    name: r'handler',
    required: true,
    includeIfNull: false
  )


  final String handler;



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
    
    name: r'overhead',
    required: false,
    includeIfNull: false
  )


  final V1Overhead? overhead;



  @JsonKey(
    
    name: r'scheduling',
    required: false,
    includeIfNull: false
  )


  final V1Scheduling? scheduling;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1RuntimeClass &&
     other.apiVersion == apiVersion &&
     other.handler == handler &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.overhead == overhead &&
     other.scheduling == scheduling;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    handler.hashCode +
    kind.hashCode +
    metadata.hashCode +
    overhead.hashCode +
    scheduling.hashCode;

  factory V1RuntimeClass.fromJson(Map<String, dynamic> json) => _$V1RuntimeClassFromJson(json);

  Map<String, dynamic> toJson() => _$V1RuntimeClassToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

