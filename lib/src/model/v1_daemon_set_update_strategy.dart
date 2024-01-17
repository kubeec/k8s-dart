//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_rolling_update_daemon_set.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_daemon_set_update_strategy.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1DaemonSetUpdateStrategy {
  /// Returns a new [V1DaemonSetUpdateStrategy] instance.
  V1DaemonSetUpdateStrategy({

     this.rollingUpdate,

     this.type,
  });

  @JsonKey(
    
    name: r'rollingUpdate',
    required: false,
    includeIfNull: false
  )


  final V1RollingUpdateDaemonSet? rollingUpdate;



      /// Type of daemon set update. Can be \"RollingUpdate\" or \"OnDelete\". Default is RollingUpdate.
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final String? type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1DaemonSetUpdateStrategy &&
     other.rollingUpdate == rollingUpdate &&
     other.type == type;

  @override
  int get hashCode =>
    rollingUpdate.hashCode +
    type.hashCode;

  factory V1DaemonSetUpdateStrategy.fromJson(Map<String, dynamic> json) => _$V1DaemonSetUpdateStrategyFromJson(json);

  Map<String, dynamic> toJson() => _$V1DaemonSetUpdateStrategyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

