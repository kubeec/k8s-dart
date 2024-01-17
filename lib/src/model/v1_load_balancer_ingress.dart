//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_port_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_load_balancer_ingress.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1LoadBalancerIngress {
  /// Returns a new [V1LoadBalancerIngress] instance.
  V1LoadBalancerIngress({

     this.hostname,

     this.ip,

     this.ports,
  });

      /// Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
  @JsonKey(
    
    name: r'hostname',
    required: false,
    includeIfNull: false
  )


  final String? hostname;



      /// IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
  @JsonKey(
    
    name: r'ip',
    required: false,
    includeIfNull: false
  )


  final String? ip;



      /// Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
  @JsonKey(
    
    name: r'ports',
    required: false,
    includeIfNull: false
  )


  final List<V1PortStatus>? ports;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1LoadBalancerIngress &&
     other.hostname == hostname &&
     other.ip == ip &&
     other.ports == ports;

  @override
  int get hashCode =>
    hostname.hashCode +
    ip.hashCode +
    ports.hashCode;

  factory V1LoadBalancerIngress.fromJson(Map<String, dynamic> json) => _$V1LoadBalancerIngressFromJson(json);

  Map<String, dynamic> toJson() => _$V1LoadBalancerIngressToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

