//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_rolling_update_deployment.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1RollingUpdateDeployment {
  /// Returns a new [V1RollingUpdateDeployment] instance.
  V1RollingUpdateDeployment({

     this.maxSurge,

     this.maxUnavailable,
  });

      /// The maximum number of pods that can be scheduled above the desired number of pods. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). This can not be 0 if MaxUnavailable is 0. Absolute number is calculated from percentage by rounding up. Defaults to 25%. Example: when this is set to 30%, the new ReplicaSet can be scaled up immediately when the rolling update starts, such that the total number of old and new pods do not exceed 130% of desired pods. Once old pods have been killed, new ReplicaSet can be scaled up further, ensuring that total number of pods running at any time during the update is at most 130% of desired pods.
  @JsonKey(
    
    name: r'maxSurge',
    required: false,
    includeIfNull: false
  )


  final Object? maxSurge;



      /// The maximum number of pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is calculated from percentage by rounding down. This can not be 0 if MaxSurge is 0. Defaults to 25%. Example: when this is set to 30%, the old ReplicaSet can be scaled down to 70% of desired pods immediately when the rolling update starts. Once new pods are ready, old ReplicaSet can be scaled down further, followed by scaling up the new ReplicaSet, ensuring that the total number of pods available at all times during the update is at least 70% of desired pods.
  @JsonKey(
    
    name: r'maxUnavailable',
    required: false,
    includeIfNull: false
  )


  final Object? maxUnavailable;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1RollingUpdateDeployment &&
     other.maxSurge == maxSurge &&
     other.maxUnavailable == maxUnavailable;

  @override
  int get hashCode =>
    maxSurge.hashCode +
    maxUnavailable.hashCode;

  factory V1RollingUpdateDeployment.fromJson(Map<String, dynamic> json) => _$V1RollingUpdateDeploymentFromJson(json);

  Map<String, dynamic> toJson() => _$V1RollingUpdateDeploymentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

