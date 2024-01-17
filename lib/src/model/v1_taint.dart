//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_taint.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Taint {
  /// Returns a new [V1Taint] instance.
  V1Taint({

    required  this.effect,

    required  this.key,

     this.timeAdded,

     this.value,
  });

      /// Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
  @JsonKey(
    
    name: r'effect',
    required: true,
    includeIfNull: false
  )


  final String effect;



      /// Required. The taint key to be applied to a node.
  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false
  )


  final String key;



      /// TimeAdded represents the time at which the taint was added. It is only written for NoExecute taints.
  @JsonKey(
    
    name: r'timeAdded',
    required: false,
    includeIfNull: false
  )


  final DateTime? timeAdded;



      /// The taint value corresponding to the taint key.
  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false
  )


  final String? value;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Taint &&
     other.effect == effect &&
     other.key == key &&
     other.timeAdded == timeAdded &&
     other.value == value;

  @override
  int get hashCode =>
    effect.hashCode +
    key.hashCode +
    timeAdded.hashCode +
    value.hashCode;

  factory V1Taint.fromJson(Map<String, dynamic> json) => _$V1TaintFromJson(json);

  Map<String, dynamic> toJson() => _$V1TaintToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

