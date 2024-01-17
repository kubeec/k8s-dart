//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'discovery_v1_endpoint_port.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DiscoveryV1EndpointPort {
  /// Returns a new [DiscoveryV1EndpointPort] instance.
  DiscoveryV1EndpointPort({

     this.appProtocol,

     this.name,

     this.port,

     this.protocol,
  });

      /// The application protocol for this port. This is used as a hint for implementations to offer richer behavior for protocols that they understand. This field follows standard Kubernetes label syntax. Valid values are either:  * Un-prefixed protocol names - reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names).  * Kubernetes-defined prefixed names:   * 'kubernetes.io/h2c' - HTTP/2 over cleartext as described in https://www.rfc-editor.org/rfc/rfc7540  * Other protocols should use implementation-defined prefixed names such as mycompany.com/my-custom-protocol.
  @JsonKey(
    
    name: r'appProtocol',
    required: false,
    includeIfNull: false
  )


  final String? appProtocol;



      /// name represents the name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// port represents the port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
  @JsonKey(
    
    name: r'port',
    required: false,
    includeIfNull: false
  )


  final int? port;



      /// protocol represents the IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
  @JsonKey(
    
    name: r'protocol',
    required: false,
    includeIfNull: false
  )


  final String? protocol;



  @override
  bool operator ==(Object other) => identical(this, other) || other is DiscoveryV1EndpointPort &&
     other.appProtocol == appProtocol &&
     other.name == name &&
     other.port == port &&
     other.protocol == protocol;

  @override
  int get hashCode =>
    appProtocol.hashCode +
    name.hashCode +
    port.hashCode +
    protocol.hashCode;

  factory DiscoveryV1EndpointPort.fromJson(Map<String, dynamic> json) => _$DiscoveryV1EndpointPortFromJson(json);

  Map<String, dynamic> toJson() => _$DiscoveryV1EndpointPortToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

