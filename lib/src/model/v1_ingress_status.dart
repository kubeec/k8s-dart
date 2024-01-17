//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_ingress_load_balancer_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_ingress_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1IngressStatus {
  /// Returns a new [V1IngressStatus] instance.
  V1IngressStatus({

     this.loadBalancer,
  });

  @JsonKey(
    
    name: r'loadBalancer',
    required: false,
    includeIfNull: false
  )


  final V1IngressLoadBalancerStatus? loadBalancer;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1IngressStatus &&
     other.loadBalancer == loadBalancer;

  @override
  int get hashCode =>
    loadBalancer.hashCode;

  factory V1IngressStatus.fromJson(Map<String, dynamic> json) => _$V1IngressStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1IngressStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

