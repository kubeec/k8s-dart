//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_rolling_update_stateful_set_strategy.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_stateful_set_update_strategy.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1StatefulSetUpdateStrategy {
  /// Returns a new [V1StatefulSetUpdateStrategy] instance.
  V1StatefulSetUpdateStrategy({

     this.rollingUpdate,

     this.type,
  });

  @JsonKey(
    
    name: r'rollingUpdate',
    required: false,
    includeIfNull: false
  )


  final V1RollingUpdateStatefulSetStrategy? rollingUpdate;



      /// Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final String? type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1StatefulSetUpdateStrategy &&
     other.rollingUpdate == rollingUpdate &&
     other.type == type;

  @override
  int get hashCode =>
    rollingUpdate.hashCode +
    type.hashCode;

  factory V1StatefulSetUpdateStrategy.fromJson(Map<String, dynamic> json) => _$V1StatefulSetUpdateStrategyFromJson(json);

  Map<String, dynamic> toJson() => _$V1StatefulSetUpdateStrategyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

