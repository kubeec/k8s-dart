//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_node_config_source.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_node_config_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NodeConfigStatus {
  /// Returns a new [V1NodeConfigStatus] instance.
  V1NodeConfigStatus({

     this.active,

     this.assigned,

     this.error,

     this.lastKnownGood,
  });

  @JsonKey(
    
    name: r'active',
    required: false,
    includeIfNull: false
  )


  final V1NodeConfigSource? active;



  @JsonKey(
    
    name: r'assigned',
    required: false,
    includeIfNull: false
  )


  final V1NodeConfigSource? assigned;



      /// Error describes any problems reconciling the Spec.ConfigSource to the Active config. Errors may occur, for example, attempting to checkpoint Spec.ConfigSource to the local Assigned record, attempting to checkpoint the payload associated with Spec.ConfigSource, attempting to load or validate the Assigned config, etc. Errors may occur at different points while syncing config. Earlier errors (e.g. download or checkpointing errors) will not result in a rollback to LastKnownGood, and may resolve across Kubelet retries. Later errors (e.g. loading or validating a checkpointed config) will result in a rollback to LastKnownGood. In the latter case, it is usually possible to resolve the error by fixing the config assigned in Spec.ConfigSource. You can find additional information for debugging by searching the error message in the Kubelet log. Error is a human-readable description of the error state; machines can check whether or not Error is empty, but should not rely on the stability of the Error text across Kubelet versions.
  @JsonKey(
    
    name: r'error',
    required: false,
    includeIfNull: false
  )


  final String? error;



  @JsonKey(
    
    name: r'lastKnownGood',
    required: false,
    includeIfNull: false
  )


  final V1NodeConfigSource? lastKnownGood;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NodeConfigStatus &&
     other.active == active &&
     other.assigned == assigned &&
     other.error == error &&
     other.lastKnownGood == lastKnownGood;

  @override
  int get hashCode =>
    active.hashCode +
    assigned.hashCode +
    error.hashCode +
    lastKnownGood.hashCode;

  factory V1NodeConfigStatus.fromJson(Map<String, dynamic> json) => _$V1NodeConfigStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1NodeConfigStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

