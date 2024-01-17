//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_readiness_gate.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodReadinessGate {
  /// Returns a new [V1PodReadinessGate] instance.
  V1PodReadinessGate({

    required  this.conditionType,
  });

      /// ConditionType refers to a condition in the pod's condition list with matching type.
  @JsonKey(
    
    name: r'conditionType',
    required: true,
    includeIfNull: false
  )


  final String conditionType;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodReadinessGate &&
     other.conditionType == conditionType;

  @override
  int get hashCode =>
    conditionType.hashCode;

  factory V1PodReadinessGate.fromJson(Map<String, dynamic> json) => _$V1PodReadinessGateFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodReadinessGateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

