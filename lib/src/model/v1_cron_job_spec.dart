//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_job_template_spec.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_cron_job_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CronJobSpec {
  /// Returns a new [V1CronJobSpec] instance.
  V1CronJobSpec({

     this.concurrencyPolicy,

     this.failedJobsHistoryLimit,

    required  this.jobTemplate,

    required  this.schedule,

     this.startingDeadlineSeconds,

     this.successfulJobsHistoryLimit,

     this.suspend,

     this.timeZone,
  });

      /// Specifies how to treat concurrent executions of a Job. Valid values are:  - \"Allow\" (default): allows CronJobs to run concurrently; - \"Forbid\": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - \"Replace\": cancels currently running job and replaces it with a new one
  @JsonKey(
    
    name: r'concurrencyPolicy',
    required: false,
    includeIfNull: false
  )


  final String? concurrencyPolicy;



      /// The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.
  @JsonKey(
    
    name: r'failedJobsHistoryLimit',
    required: false,
    includeIfNull: false
  )


  final int? failedJobsHistoryLimit;



  @JsonKey(
    
    name: r'jobTemplate',
    required: true,
    includeIfNull: false
  )


  final V1JobTemplateSpec jobTemplate;



      /// The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
  @JsonKey(
    
    name: r'schedule',
    required: true,
    includeIfNull: false
  )


  final String schedule;



      /// Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
  @JsonKey(
    
    name: r'startingDeadlineSeconds',
    required: false,
    includeIfNull: false
  )


  final int? startingDeadlineSeconds;



      /// The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.
  @JsonKey(
    
    name: r'successfulJobsHistoryLimit',
    required: false,
    includeIfNull: false
  )


  final int? successfulJobsHistoryLimit;



      /// This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
  @JsonKey(
    
    name: r'suspend',
    required: false,
    includeIfNull: false
  )


  final bool? suspend;



      /// The time zone name for the given schedule, see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones. If not specified, this will default to the time zone of the kube-controller-manager process. The set of valid time zone names and the time zone offset is loaded from the system-wide time zone database by the API server during CronJob validation and the controller manager during execution. If no system-wide time zone database can be found a bundled version of the database is used instead. If the time zone name becomes invalid during the lifetime of a CronJob or due to a change in host configuration, the controller will stop creating new new Jobs and will create a system event with the reason UnknownTimeZone. More information can be found in https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/#time-zones
  @JsonKey(
    
    name: r'timeZone',
    required: false,
    includeIfNull: false
  )


  final String? timeZone;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CronJobSpec &&
     other.concurrencyPolicy == concurrencyPolicy &&
     other.failedJobsHistoryLimit == failedJobsHistoryLimit &&
     other.jobTemplate == jobTemplate &&
     other.schedule == schedule &&
     other.startingDeadlineSeconds == startingDeadlineSeconds &&
     other.successfulJobsHistoryLimit == successfulJobsHistoryLimit &&
     other.suspend == suspend &&
     other.timeZone == timeZone;

  @override
  int get hashCode =>
    concurrencyPolicy.hashCode +
    failedJobsHistoryLimit.hashCode +
    jobTemplate.hashCode +
    schedule.hashCode +
    startingDeadlineSeconds.hashCode +
    successfulJobsHistoryLimit.hashCode +
    suspend.hashCode +
    timeZone.hashCode;

  factory V1CronJobSpec.fromJson(Map<String, dynamic> json) => _$V1CronJobSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1CronJobSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

