//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:k8s/src/model/discovery_v1_endpoint_port.dart';
import 'package:k8s/src/model/v1_endpoint.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_endpoint_slice.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1EndpointSlice {
  /// Returns a new [V1EndpointSlice] instance.
  V1EndpointSlice({

    required  this.addressType,

     this.apiVersion,

    required  this.endpoints,

     this.kind,

     this.metadata,

     this.ports,
  });

      /// addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.
  @JsonKey(
    
    name: r'addressType',
    required: true,
    includeIfNull: false
  )


  final String addressType;



      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
  @JsonKey(
    
    name: r'endpoints',
    required: true,
    includeIfNull: false
  )


  final List<V1Endpoint> endpoints;



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



      /// ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates \"all ports\". Each slice may include a maximum of 100 ports.
  @JsonKey(
    
    name: r'ports',
    required: false,
    includeIfNull: false
  )


  final List<DiscoveryV1EndpointPort>? ports;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1EndpointSlice &&
     other.addressType == addressType &&
     other.apiVersion == apiVersion &&
     other.endpoints == endpoints &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.ports == ports;

  @override
  int get hashCode =>
    addressType.hashCode +
    apiVersion.hashCode +
    endpoints.hashCode +
    kind.hashCode +
    metadata.hashCode +
    ports.hashCode;

  factory V1EndpointSlice.fromJson(Map<String, dynamic> json) => _$V1EndpointSliceFromJson(json);

  Map<String, dynamic> toJson() => _$V1EndpointSliceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

