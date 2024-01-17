//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_certificate_signing_request.dart';
import 'package:k8s/src/model/v1_list_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_certificate_signing_request_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CertificateSigningRequestList {
  /// Returns a new [V1CertificateSigningRequestList] instance.
  V1CertificateSigningRequestList({

     this.apiVersion,

    required  this.items,

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



      /// items is a collection of CertificateSigningRequest objects
  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false
  )


  final List<V1CertificateSigningRequest> items;



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


  final V1ListMeta? metadata;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CertificateSigningRequestList &&
     other.apiVersion == apiVersion &&
     other.items == items &&
     other.kind == kind &&
     other.metadata == metadata;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    items.hashCode +
    kind.hashCode +
    metadata.hashCode;

  factory V1CertificateSigningRequestList.fromJson(Map<String, dynamic> json) => _$V1CertificateSigningRequestListFromJson(json);

  Map<String, dynamic> toJson() => _$V1CertificateSigningRequestListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

