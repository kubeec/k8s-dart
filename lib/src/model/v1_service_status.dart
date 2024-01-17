//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_condition.dart';
import 'package:k8s/src/model/v1_load_balancer_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_service_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ServiceStatus {
  /// Returns a new [V1ServiceStatus] instance.
  V1ServiceStatus({

     this.conditions,

     this.loadBalancer,
  });

      /// Current service state
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1Condition>? conditions;



  @JsonKey(
    
    name: r'loadBalancer',
    required: false,
    includeIfNull: false
  )


  final V1LoadBalancerStatus? loadBalancer;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ServiceStatus &&
     other.conditions == conditions &&
     other.loadBalancer == loadBalancer;

  @override
  int get hashCode =>
    conditions.hashCode +
    loadBalancer.hashCode;

  factory V1ServiceStatus.fromJson(Map<String, dynamic> json) => _$V1ServiceStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1ServiceStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

