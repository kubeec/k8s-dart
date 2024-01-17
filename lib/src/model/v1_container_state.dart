//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_container_state_terminated.dart';
import 'package:k8s/src/model/v1_container_state_running.dart';
import 'package:k8s/src/model/v1_container_state_waiting.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_container_state.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ContainerState {
  /// Returns a new [V1ContainerState] instance.
  V1ContainerState({

     this.running,

     this.terminated,

     this.waiting,
  });

  @JsonKey(
    
    name: r'running',
    required: false,
    includeIfNull: false
  )


  final V1ContainerStateRunning? running;



  @JsonKey(
    
    name: r'terminated',
    required: false,
    includeIfNull: false
  )


  final V1ContainerStateTerminated? terminated;



  @JsonKey(
    
    name: r'waiting',
    required: false,
    includeIfNull: false
  )


  final V1ContainerStateWaiting? waiting;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ContainerState &&
     other.running == running &&
     other.terminated == terminated &&
     other.waiting == waiting;

  @override
  int get hashCode =>
    running.hashCode +
    terminated.hashCode +
    waiting.hashCode;

  factory V1ContainerState.fromJson(Map<String, dynamic> json) => _$V1ContainerStateFromJson(json);

  Map<String, dynamic> toJson() => _$V1ContainerStateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

