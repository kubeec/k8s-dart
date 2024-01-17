//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_stateful_set_ordinals.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1StatefulSetOrdinals {
  /// Returns a new [V1StatefulSetOrdinals] instance.
  V1StatefulSetOrdinals({

     this.start,
  });

      /// start is the number representing the first replica's index. It may be used to number replicas from an alternate index (eg: 1-indexed) over the default 0-indexed names, or to orchestrate progressive movement of replicas from one StatefulSet to another. If set, replica indices will be in the range:   [.spec.ordinals.start, .spec.ordinals.start + .spec.replicas). If unset, defaults to 0. Replica indices will be in the range:   [0, .spec.replicas).
  @JsonKey(
    
    name: r'start',
    required: false,
    includeIfNull: false
  )


  final int? start;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1StatefulSetOrdinals &&
     other.start == start;

  @override
  int get hashCode =>
    start.hashCode;

  factory V1StatefulSetOrdinals.fromJson(Map<String, dynamic> json) => _$V1StatefulSetOrdinalsFromJson(json);

  Map<String, dynamic> toJson() => _$V1StatefulSetOrdinalsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

