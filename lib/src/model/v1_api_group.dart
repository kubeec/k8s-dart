//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_server_address_by_client_cidr.dart';
import 'package:k8s/src/model/v1_group_version_for_discovery.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_api_group.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1APIGroup {
  /// Returns a new [V1APIGroup] instance.
  V1APIGroup({

     this.apiVersion,

     this.kind,

    required  this.name,

     this.preferredVersion,

     this.serverAddressByClientCIDRs,

    required  this.versions,
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



      /// name is the name of the group.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'preferredVersion',
    required: false,
    includeIfNull: false
  )


  final V1GroupVersionForDiscovery? preferredVersion;



      /// a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
  @JsonKey(
    
    name: r'serverAddressByClientCIDRs',
    required: false,
    includeIfNull: false
  )


  final List<V1ServerAddressByClientCIDR>? serverAddressByClientCIDRs;



      /// versions are the versions supported in this group.
  @JsonKey(
    
    name: r'versions',
    required: true,
    includeIfNull: false
  )


  final List<V1GroupVersionForDiscovery> versions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1APIGroup &&
     other.apiVersion == apiVersion &&
     other.kind == kind &&
     other.name == name &&
     other.preferredVersion == preferredVersion &&
     other.serverAddressByClientCIDRs == serverAddressByClientCIDRs &&
     other.versions == versions;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    kind.hashCode +
    name.hashCode +
    preferredVersion.hashCode +
    serverAddressByClientCIDRs.hashCode +
    versions.hashCode;

  factory V1APIGroup.fromJson(Map<String, dynamic> json) => _$V1APIGroupFromJson(json);

  Map<String, dynamic> toJson() => _$V1APIGroupToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

