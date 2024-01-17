//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_toleration.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Toleration {
  /// Returns a new [V1Toleration] instance.
  V1Toleration({

     this.effect,

     this.key,

     this.operator_,

     this.tolerationSeconds,

     this.value,
  });

      /// Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.
  @JsonKey(
    
    name: r'effect',
    required: false,
    includeIfNull: false
  )


  final String? effect;



      /// Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
  @JsonKey(
    
    name: r'key',
    required: false,
    includeIfNull: false
  )


  final String? key;



      /// Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.
  @JsonKey(
    
    name: r'operator',
    required: false,
    includeIfNull: false
  )


  final String? operator_;



      /// TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.
  @JsonKey(
    
    name: r'tolerationSeconds',
    required: false,
    includeIfNull: false
  )


  final int? tolerationSeconds;



      /// Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false
  )


  final String? value;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Toleration &&
     other.effect == effect &&
     other.key == key &&
     other.operator_ == operator_ &&
     other.tolerationSeconds == tolerationSeconds &&
     other.value == value;

  @override
  int get hashCode =>
    effect.hashCode +
    key.hashCode +
    operator_.hashCode +
    tolerationSeconds.hashCode +
    value.hashCode;

  factory V1Toleration.fromJson(Map<String, dynamic> json) => _$V1TolerationFromJson(json);

  Map<String, dynamic> toJson() => _$V1TolerationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

