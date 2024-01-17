//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_service_port.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ServicePort {
  /// Returns a new [V1ServicePort] instance.
  V1ServicePort({

     this.appProtocol,

     this.name,

     this.nodePort,

    required  this.port,

     this.protocol,

     this.targetPort,
  });

      /// The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.
  @JsonKey(
    
    name: r'appProtocol',
    required: false,
    includeIfNull: false
  )


  final String? appProtocol;



      /// The name of this port within the service. This must be a DNS_LABEL. All ports within a ServiceSpec must have unique names. When considering the endpoints for a Service, this must match the 'name' field in the EndpointPort. Optional if only one ServicePort is defined on this service.
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// The port on each node on which this service is exposed when type is NodePort or LoadBalancer.  Usually assigned by the system. If a value is specified, in-range, and not in use it will be used, otherwise the operation will fail.  If not specified, a port will be allocated if this Service requires one.  If this field is specified when creating a Service which does not need it, creation will fail. This field will be wiped when updating a Service to no longer need it (e.g. changing type from NodePort to ClusterIP). More info: https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport
  @JsonKey(
    
    name: r'nodePort',
    required: false,
    includeIfNull: false
  )


  final int? nodePort;



      /// The port that will be exposed by this service.
  @JsonKey(
    
    name: r'port',
    required: true,
    includeIfNull: false
  )


  final int port;



      /// The IP protocol for this port. Supports \"TCP\", \"UDP\", and \"SCTP\". Default is TCP.
  @JsonKey(
    
    name: r'protocol',
    required: false,
    includeIfNull: false
  )


  final String? protocol;



      /// Number or name of the port to access on the pods targeted by the service. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. If this is a string, it will be looked up as a named port in the target Pod's container ports. If this is not specified, the value of the 'port' field is used (an identity map). This field is ignored for services with clusterIP=None, and should be omitted or set equal to the 'port' field. More info: https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service
  @JsonKey(
    
    name: r'targetPort',
    required: false,
    includeIfNull: false
  )


  final Object? targetPort;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ServicePort &&
     other.appProtocol == appProtocol &&
     other.name == name &&
     other.nodePort == nodePort &&
     other.port == port &&
     other.protocol == protocol &&
     other.targetPort == targetPort;

  @override
  int get hashCode =>
    appProtocol.hashCode +
    name.hashCode +
    nodePort.hashCode +
    port.hashCode +
    protocol.hashCode +
    targetPort.hashCode;

  factory V1ServicePort.fromJson(Map<String, dynamic> json) => _$V1ServicePortFromJson(json);

  Map<String, dynamic> toJson() => _$V1ServicePortToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

