//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_load_balancer_ingress.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_load_balancer_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1LoadBalancerStatus {
  /// Returns a new [V1LoadBalancerStatus] instance.
  V1LoadBalancerStatus({

     this.ingress,
  });

      /// Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
  @JsonKey(
    
    name: r'ingress',
    required: false,
    includeIfNull: false
  )


  final List<V1LoadBalancerIngress>? ingress;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1LoadBalancerStatus &&
     other.ingress == ingress;

  @override
  int get hashCode =>
    ingress.hashCode;

  factory V1LoadBalancerStatus.fromJson(Map<String, dynamic> json) => _$V1LoadBalancerStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1LoadBalancerStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

