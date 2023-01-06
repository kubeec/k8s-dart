//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_batch_v1_job_template_spec.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_batch_v1_cron_job_spec.g.dart';

/// CronJobSpec describes how the job execution will look like and when it will actually run.
///
/// Properties:
/// * [concurrencyPolicy] - Specifies how to treat concurrent executions of a Job. Valid values are: - \"Allow\" (default): allows CronJobs to run concurrently; - \"Forbid\": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - \"Replace\": cancels currently running job and replaces it with a new one  
/// * [failedJobsHistoryLimit] - The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.
/// * [jobTemplate] 
/// * [schedule] - The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
/// * [startingDeadlineSeconds] - Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
/// * [successfulJobsHistoryLimit] - The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.
/// * [suspend] - This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
/// * [timeZone] - The time zone name for the given schedule, see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones. If not specified, this will default to the time zone of the kube-controller-manager process. The set of valid time zone names and the time zone offset is loaded from the system-wide time zone database by the API server during CronJob validation and the controller manager during execution. If no system-wide time zone database can be found a bundled version of the database is used instead. If the time zone name becomes invalid during the lifetime of a CronJob or due to a change in host configuration, the controller will stop creating new new Jobs and will create a system event with the reason UnknownTimeZone. More information can be found in https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/#time-zones This is beta field and must be enabled via the `CronJobTimeZone` feature gate.
@BuiltValue()
abstract class IoK8sApiBatchV1CronJobSpec implements Built<IoK8sApiBatchV1CronJobSpec, IoK8sApiBatchV1CronJobSpecBuilder> {
  /// Specifies how to treat concurrent executions of a Job. Valid values are: - \"Allow\" (default): allows CronJobs to run concurrently; - \"Forbid\": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - \"Replace\": cancels currently running job and replaces it with a new one  
  @BuiltValueField(wireName: r'concurrencyPolicy')
  String? get concurrencyPolicy;

  /// The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.
  @BuiltValueField(wireName: r'failedJobsHistoryLimit')
  int? get failedJobsHistoryLimit;

  @BuiltValueField(wireName: r'jobTemplate')
  IoK8sApiBatchV1JobTemplateSpec get jobTemplate;

  /// The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
  @BuiltValueField(wireName: r'schedule')
  String get schedule;

  /// Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
  @BuiltValueField(wireName: r'startingDeadlineSeconds')
  int? get startingDeadlineSeconds;

  /// The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.
  @BuiltValueField(wireName: r'successfulJobsHistoryLimit')
  int? get successfulJobsHistoryLimit;

  /// This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
  @BuiltValueField(wireName: r'suspend')
  bool? get suspend;

  /// The time zone name for the given schedule, see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones. If not specified, this will default to the time zone of the kube-controller-manager process. The set of valid time zone names and the time zone offset is loaded from the system-wide time zone database by the API server during CronJob validation and the controller manager during execution. If no system-wide time zone database can be found a bundled version of the database is used instead. If the time zone name becomes invalid during the lifetime of a CronJob or due to a change in host configuration, the controller will stop creating new new Jobs and will create a system event with the reason UnknownTimeZone. More information can be found in https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/#time-zones This is beta field and must be enabled via the `CronJobTimeZone` feature gate.
  @BuiltValueField(wireName: r'timeZone')
  String? get timeZone;

  IoK8sApiBatchV1CronJobSpec._();

  factory IoK8sApiBatchV1CronJobSpec([void updates(IoK8sApiBatchV1CronJobSpecBuilder b)]) = _$IoK8sApiBatchV1CronJobSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiBatchV1CronJobSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiBatchV1CronJobSpec> get serializer => _$IoK8sApiBatchV1CronJobSpecSerializer();
}

class _$IoK8sApiBatchV1CronJobSpecSerializer implements PrimitiveSerializer<IoK8sApiBatchV1CronJobSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiBatchV1CronJobSpec, _$IoK8sApiBatchV1CronJobSpec];

  @override
  final String wireName = r'IoK8sApiBatchV1CronJobSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiBatchV1CronJobSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.concurrencyPolicy != null) {
      yield r'concurrencyPolicy';
      yield serializers.serialize(
        object.concurrencyPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.failedJobsHistoryLimit != null) {
      yield r'failedJobsHistoryLimit';
      yield serializers.serialize(
        object.failedJobsHistoryLimit,
        specifiedType: const FullType(int),
      );
    }
    yield r'jobTemplate';
    yield serializers.serialize(
      object.jobTemplate,
      specifiedType: const FullType(IoK8sApiBatchV1JobTemplateSpec),
    );
    yield r'schedule';
    yield serializers.serialize(
      object.schedule,
      specifiedType: const FullType(String),
    );
    if (object.startingDeadlineSeconds != null) {
      yield r'startingDeadlineSeconds';
      yield serializers.serialize(
        object.startingDeadlineSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.successfulJobsHistoryLimit != null) {
      yield r'successfulJobsHistoryLimit';
      yield serializers.serialize(
        object.successfulJobsHistoryLimit,
        specifiedType: const FullType(int),
      );
    }
    if (object.suspend != null) {
      yield r'suspend';
      yield serializers.serialize(
        object.suspend,
        specifiedType: const FullType(bool),
      );
    }
    if (object.timeZone != null) {
      yield r'timeZone';
      yield serializers.serialize(
        object.timeZone,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiBatchV1CronJobSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiBatchV1CronJobSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'concurrencyPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.concurrencyPolicy = valueDes;
          break;
        case r'failedJobsHistoryLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.failedJobsHistoryLimit = valueDes;
          break;
        case r'jobTemplate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiBatchV1JobTemplateSpec),
          ) as IoK8sApiBatchV1JobTemplateSpec;
          result.jobTemplate.replace(valueDes);
          break;
        case r'schedule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schedule = valueDes;
          break;
        case r'startingDeadlineSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.startingDeadlineSeconds = valueDes;
          break;
        case r'successfulJobsHistoryLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.successfulJobsHistoryLimit = valueDes;
          break;
        case r'suspend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.suspend = valueDes;
          break;
        case r'timeZone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timeZone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiBatchV1CronJobSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiBatchV1CronJobSpecBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

