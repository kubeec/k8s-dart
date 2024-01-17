//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_rolling_update_stateful_set_strategy.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1RollingUpdateStatefulSetStrategy {
  /// Returns a new [V1RollingUpdateStatefulSetStrategy] instance.
  V1RollingUpdateStatefulSetStrategy({

     this.maxUnavailable,

     this.partition,
  });

      /// The maximum number of pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is calculated from percentage by rounding up. This can not be 0. Defaults to 1. This field is alpha-level and is only honored by servers that enable the MaxUnavailableStatefulSet feature. The field applies to all pods in the range 0 to Replicas-1. That means if there is any unavailable pod in the range 0 to Replicas-1, it will be counted towards MaxUnavailable.
  @JsonKey(
    
    name: r'maxUnavailable',
    required: false,
    includeIfNull: false
  )


  final Object? maxUnavailable;



      /// Partition indicates the ordinal at which the StatefulSet should be partitioned for updates. During a rolling update, all pods from ordinal Replicas-1 to Partition are updated. All pods from ordinal Partition-1 to 0 remain untouched. This is helpful in being able to do a canary based deployment. The default value is 0.
  @JsonKey(
    
    name: r'partition',
    required: false,
    includeIfNull: false
  )


  final int? partition;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1RollingUpdateStatefulSetStrategy &&
     other.maxUnavailable == maxUnavailable &&
     other.partition == partition;

  @override
  int get hashCode =>
    maxUnavailable.hashCode +
    partition.hashCode;

  factory V1RollingUpdateStatefulSetStrategy.fromJson(Map<String, dynamic> json) => _$V1RollingUpdateStatefulSetStrategyFromJson(json);

  Map<String, dynamic> toJson() => _$V1RollingUpdateStatefulSetStrategyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

