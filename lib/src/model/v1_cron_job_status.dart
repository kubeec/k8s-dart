//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_cron_job_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CronJobStatus {
  /// Returns a new [V1CronJobStatus] instance.
  V1CronJobStatus({

     this.active,

     this.lastScheduleTime,

     this.lastSuccessfulTime,
  });

      /// A list of pointers to currently running jobs.
  @JsonKey(
    
    name: r'active',
    required: false,
    includeIfNull: false
  )


  final List<V1ObjectReference>? active;



      /// Information when was the last time the job was successfully scheduled.
  @JsonKey(
    
    name: r'lastScheduleTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastScheduleTime;



      /// Information when was the last time the job successfully completed.
  @JsonKey(
    
    name: r'lastSuccessfulTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastSuccessfulTime;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CronJobStatus &&
     other.active == active &&
     other.lastScheduleTime == lastScheduleTime &&
     other.lastSuccessfulTime == lastSuccessfulTime;

  @override
  int get hashCode =>
    active.hashCode +
    lastScheduleTime.hashCode +
    lastSuccessfulTime.hashCode;

  factory V1CronJobStatus.fromJson(Map<String, dynamic> json) => _$V1CronJobStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1CronJobStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

