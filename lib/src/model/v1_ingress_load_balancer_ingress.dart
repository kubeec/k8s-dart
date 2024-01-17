//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_ingress_port_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_ingress_load_balancer_ingress.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1IngressLoadBalancerIngress {
  /// Returns a new [V1IngressLoadBalancerIngress] instance.
  V1IngressLoadBalancerIngress({

     this.hostname,

     this.ip,

     this.ports,
  });

      /// hostname is set for load-balancer ingress points that are DNS based.
  @JsonKey(
    
    name: r'hostname',
    required: false,
    includeIfNull: false
  )


  final String? hostname;



      /// ip is set for load-balancer ingress points that are IP based.
  @JsonKey(
    
    name: r'ip',
    required: false,
    includeIfNull: false
  )


  final String? ip;



      /// ports provides information about the ports exposed by this LoadBalancer.
  @JsonKey(
    
    name: r'ports',
    required: false,
    includeIfNull: false
  )


  final List<V1IngressPortStatus>? ports;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1IngressLoadBalancerIngress &&
     other.hostname == hostname &&
     other.ip == ip &&
     other.ports == ports;

  @override
  int get hashCode =>
    hostname.hashCode +
    ip.hashCode +
    ports.hashCode;

  factory V1IngressLoadBalancerIngress.fromJson(Map<String, dynamic> json) => _$V1IngressLoadBalancerIngressFromJson(json);

  Map<String, dynamic> toJson() => _$V1IngressLoadBalancerIngressToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

