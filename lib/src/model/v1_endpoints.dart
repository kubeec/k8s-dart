//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_endpoint_subset.dart';
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_endpoints.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Endpoints {
  /// Returns a new [V1Endpoints] instance.
  V1Endpoints({

     this.apiVersion,

     this.kind,

     this.metadata,

     this.subsets,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



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



      /// The set of all endpoints is the union of all subsets. Addresses are placed into subsets according to the IPs they share. A single address with multiple ports, some of which are ready and some of which are not (because they come from different containers) will result in the address being displayed in different subsets for the different ports. No address will appear in both Addresses and NotReadyAddresses in the same subset. Sets of addresses and ports that comprise a service.
  @JsonKey(
    
    name: r'subsets',
    required: false,
    includeIfNull: false
  )


  final List<V1EndpointSubset>? subsets;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Endpoints &&
     other.apiVersion == apiVersion &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.subsets == subsets;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    kind.hashCode +
    metadata.hashCode +
    subsets.hashCode;

  factory V1Endpoints.fromJson(Map<String, dynamic> json) => _$V1EndpointsFromJson(json);

  Map<String, dynamic> toJson() => _$V1EndpointsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

