//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_toleration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_scheduling.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Scheduling {
  /// Returns a new [V1Scheduling] instance.
  V1Scheduling({

     this.nodeSelector,

     this.tolerations,
  });

      /// nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
  @JsonKey(
    
    name: r'nodeSelector',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? nodeSelector;



      /// tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
  @JsonKey(
    
    name: r'tolerations',
    required: false,
    includeIfNull: false
  )


  final List<V1Toleration>? tolerations;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Scheduling &&
     other.nodeSelector == nodeSelector &&
     other.tolerations == tolerations;

  @override
  int get hashCode =>
    nodeSelector.hashCode +
    tolerations.hashCode;

  factory V1Scheduling.fromJson(Map<String, dynamic> json) => _$V1SchedulingFromJson(json);

  Map<String, dynamic> toJson() => _$V1SchedulingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

