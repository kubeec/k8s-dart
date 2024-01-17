//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'core_v1_endpoint_port.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CoreV1EndpointPort {
  /// Returns a new [CoreV1EndpointPort] instance.
  CoreV1EndpointPort({

     this.appProtocol,

     this.name,

    required  this.port,

     this.protocol,
  });

      /// The application protocol for this port. This is used as a hint for implementations to offer richer behavior for protocols that they understand. This field follows standard Kubernetes label syntax. Valid values are either:  * Un-prefixed protocol names - reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names).  * Kubernetes-defined prefixed names:   * 'kubernetes.io/h2c' - HTTP/2 over cleartext as described in https://www.rfc-editor.org/rfc/rfc7540  * Other protocols should use implementation-defined prefixed names such as mycompany.com/my-custom-protocol.
  @JsonKey(
    
    name: r'appProtocol',
    required: false,
    includeIfNull: false
  )


  final String? appProtocol;



      /// The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// The port number of the endpoint.
  @JsonKey(
    
    name: r'port',
    required: true,
    includeIfNull: false
  )


  final int port;



      /// The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
  @JsonKey(
    
    name: r'protocol',
    required: false,
    includeIfNull: false
  )


  final String? protocol;



  @override
  bool operator ==(Object other) => identical(this, other) || other is CoreV1EndpointPort &&
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

  factory CoreV1EndpointPort.fromJson(Map<String, dynamic> json) => _$CoreV1EndpointPortFromJson(json);

  Map<String, dynamic> toJson() => _$CoreV1EndpointPortToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

