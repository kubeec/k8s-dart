//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_list_meta.dart';
import 'package:k8s/src/model/v1_status_details.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Status {
  /// Returns a new [V1Status] instance.
  V1Status({

     this.apiVersion,

     this.code,

     this.details,

     this.kind,

     this.message,

     this.metadata,

     this.reason,

     this.status,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// Suggested HTTP return code for this status, 0 if not set.
  @JsonKey(
    
    name: r'code',
    required: false,
    includeIfNull: false
  )


  final int? code;



  @JsonKey(
    
    name: r'details',
    required: false,
    includeIfNull: false
  )


  final V1StatusDetails? details;



      /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



      /// A human-readable description of the status of this operation.
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false
  )


  final V1ListMeta? metadata;



      /// A machine-readable description of why this operation is in the \"Failure\" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



      /// Status of the operation. One of: \"Success\" or \"Failure\". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false
  )


  final String? status;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Status &&
     other.apiVersion == apiVersion &&
     other.code == code &&
     other.details == details &&
     other.kind == kind &&
     other.message == message &&
     other.metadata == metadata &&
     other.reason == reason &&
     other.status == status;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    code.hashCode +
    details.hashCode +
    kind.hashCode +
    message.hashCode +
    metadata.hashCode +
    reason.hashCode +
    status.hashCode;

  factory V1Status.fromJson(Map<String, dynamic> json) => _$V1StatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1StatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

