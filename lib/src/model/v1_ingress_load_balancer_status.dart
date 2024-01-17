//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_ingress_load_balancer_ingress.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_ingress_load_balancer_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1IngressLoadBalancerStatus {
  /// Returns a new [V1IngressLoadBalancerStatus] instance.
  V1IngressLoadBalancerStatus({

     this.ingress,
  });

      /// ingress is a list containing ingress points for the load-balancer.
  @JsonKey(
    
    name: r'ingress',
    required: false,
    includeIfNull: false
  )


  final List<V1IngressLoadBalancerIngress>? ingress;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1IngressLoadBalancerStatus &&
     other.ingress == ingress;

  @override
  int get hashCode =>
    ingress.hashCode;

  factory V1IngressLoadBalancerStatus.fromJson(Map<String, dynamic> json) => _$V1IngressLoadBalancerStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1IngressLoadBalancerStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

