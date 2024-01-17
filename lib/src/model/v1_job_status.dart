//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_uncounted_terminated_pods.dart';
import 'package:k8s/src/model/v1_job_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_job_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1JobStatus {
  /// Returns a new [V1JobStatus] instance.
  V1JobStatus({

     this.active,

     this.completedIndexes,

     this.completionTime,

     this.conditions,

     this.failed,

     this.ready,

     this.startTime,

     this.succeeded,

     this.uncountedTerminatedPods,
  });

      /// The number of pending and running pods.
  @JsonKey(
    
    name: r'active',
    required: false,
    includeIfNull: false
  )


  final int? active;



      /// completedIndexes holds the completed indexes when .spec.completionMode = \"Indexed\" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as \"1,3-5,7\".
  @JsonKey(
    
    name: r'completedIndexes',
    required: false,
    includeIfNull: false
  )


  final String? completedIndexes;



      /// Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully.
  @JsonKey(
    
    name: r'completionTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? completionTime;



      /// The latest available observations of an object's current state. When a Job fails, one of the conditions will have type \"Failed\" and status true. When a Job is suspended, one of the conditions will have type \"Suspended\" and status true; when the Job is resumed, the status of this condition will become false. When a Job is completed, one of the conditions will have type \"Complete\" and status true. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1JobCondition>? conditions;



      /// The number of pods which reached phase Failed.
  @JsonKey(
    
    name: r'failed',
    required: false,
    includeIfNull: false
  )


  final int? failed;



      /// The number of pods which have a Ready condition.  This field is beta-level. The job controller populates the field when the feature gate JobReadyPods is enabled (enabled by default).
  @JsonKey(
    
    name: r'ready',
    required: false,
    includeIfNull: false
  )


  final int? ready;



      /// Represents time when the job controller started processing a job. When a Job is created in the suspended state, this field is not set until the first time it is resumed. This field is reset every time a Job is resumed from suspension. It is represented in RFC3339 form and is in UTC.
  @JsonKey(
    
    name: r'startTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? startTime;



      /// The number of pods which reached phase Succeeded.
  @JsonKey(
    
    name: r'succeeded',
    required: false,
    includeIfNull: false
  )


  final int? succeeded;



  @JsonKey(
    
    name: r'uncountedTerminatedPods',
    required: false,
    includeIfNull: false
  )


  final V1UncountedTerminatedPods? uncountedTerminatedPods;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1JobStatus &&
     other.active == active &&
     other.completedIndexes == completedIndexes &&
     other.completionTime == completionTime &&
     other.conditions == conditions &&
     other.failed == failed &&
     other.ready == ready &&
     other.startTime == startTime &&
     other.succeeded == succeeded &&
     other.uncountedTerminatedPods == uncountedTerminatedPods;

  @override
  int get hashCode =>
    active.hashCode +
    completedIndexes.hashCode +
    completionTime.hashCode +
    conditions.hashCode +
    failed.hashCode +
    ready.hashCode +
    startTime.hashCode +
    succeeded.hashCode +
    uncountedTerminatedPods.hashCode;

  factory V1JobStatus.fromJson(Map<String, dynamic> json) => _$V1JobStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1JobStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

