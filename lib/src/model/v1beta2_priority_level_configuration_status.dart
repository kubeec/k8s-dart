//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1beta2_priority_level_configuration_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1beta2_priority_level_configuration_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta2PriorityLevelConfigurationStatus {
  /// Returns a new [V1beta2PriorityLevelConfigurationStatus] instance.
  V1beta2PriorityLevelConfigurationStatus({

     this.conditions,
  });

      /// `conditions` is the current state of \"request-priority\".
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1beta2PriorityLevelConfigurationCondition>? conditions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta2PriorityLevelConfigurationStatus &&
     other.conditions == conditions;

  @override
  int get hashCode =>
    conditions.hashCode;

  factory V1beta2PriorityLevelConfigurationStatus.fromJson(Map<String, dynamic> json) => _$V1beta2PriorityLevelConfigurationStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta2PriorityLevelConfigurationStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

