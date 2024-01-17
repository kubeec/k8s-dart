//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/core_v1_endpoint_port.dart';
import 'package:k8s/src/model/v1_endpoint_address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_endpoint_subset.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1EndpointSubset {
  /// Returns a new [V1EndpointSubset] instance.
  V1EndpointSubset({

     this.addresses,

     this.notReadyAddresses,

     this.ports,
  });

      /// IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
  @JsonKey(
    
    name: r'addresses',
    required: false,
    includeIfNull: false
  )


  final List<V1EndpointAddress>? addresses;



      /// IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
  @JsonKey(
    
    name: r'notReadyAddresses',
    required: false,
    includeIfNull: false
  )


  final List<V1EndpointAddress>? notReadyAddresses;



      /// Port numbers available on the related IP addresses.
  @JsonKey(
    
    name: r'ports',
    required: false,
    includeIfNull: false
  )


  final List<CoreV1EndpointPort>? ports;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1EndpointSubset &&
     other.addresses == addresses &&
     other.notReadyAddresses == notReadyAddresses &&
     other.ports == ports;

  @override
  int get hashCode =>
    addresses.hashCode +
    notReadyAddresses.hashCode +
    ports.hashCode;

  factory V1EndpointSubset.fromJson(Map<String, dynamic> json) => _$V1EndpointSubsetFromJson(json);

  Map<String, dynamic> toJson() => _$V1EndpointSubsetToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

