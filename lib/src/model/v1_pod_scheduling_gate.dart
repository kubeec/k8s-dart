//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_scheduling_gate.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodSchedulingGate {
  /// Returns a new [V1PodSchedulingGate] instance.
  V1PodSchedulingGate({

    required  this.name,
  });

      /// Name of the scheduling gate. Each scheduling gate must have a unique name field.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodSchedulingGate &&
     other.name == name;

  @override
  int get hashCode =>
    name.hashCode;

  factory V1PodSchedulingGate.fromJson(Map<String, dynamic> json) => _$V1PodSchedulingGateFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodSchedulingGateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

