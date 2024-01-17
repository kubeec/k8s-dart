//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_container_state_running.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ContainerStateRunning {
  /// Returns a new [V1ContainerStateRunning] instance.
  V1ContainerStateRunning({

     this.startedAt,
  });

      /// Time at which the container was last (re-)started
  @JsonKey(
    
    name: r'startedAt',
    required: false,
    includeIfNull: false
  )


  final DateTime? startedAt;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ContainerStateRunning &&
     other.startedAt == startedAt;

  @override
  int get hashCode =>
    startedAt.hashCode;

  factory V1ContainerStateRunning.fromJson(Map<String, dynamic> json) => _$V1ContainerStateRunningFromJson(json);

  Map<String, dynamic> toJson() => _$V1ContainerStateRunningToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

