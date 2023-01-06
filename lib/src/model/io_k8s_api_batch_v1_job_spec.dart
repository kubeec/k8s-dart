//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_template_spec.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_pod_failure_policy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_batch_v1_job_spec.g.dart';

/// JobSpec describes how the job execution will look like.
///
/// Properties:
/// * [activeDeadlineSeconds] - Specifies the duration in seconds relative to the startTime that the job may be continuously active before the system tries to terminate it; value must be positive integer. If a Job is suspended (at creation or through an update), this timer will effectively be stopped and reset when the Job is resumed again.
/// * [backoffLimit] - Specifies the number of retries before marking this job failed. Defaults to 6
/// * [completionMode] - CompletionMode specifies how Pod completions are tracked. It can be `NonIndexed` (default) or `Indexed`.  `NonIndexed` means that the Job is considered complete when there have been .spec.completions successfully completed Pods. Each Pod completion is homologous to each other.  `Indexed` means that the Pods of a Job get an associated completion index from 0 to (.spec.completions - 1), available in the annotation batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5. In addition, The Pod name takes the form `$(job-name)-$(index)-$(random-string)`, the Pod hostname takes the form `$(job-name)-$(index)`.  More completion modes can be added in the future. If the Job controller observes a mode that it doesn't recognize, which is possible during upgrades due to version skew, the controller skips updates for the Job.
/// * [completions] - Specifies the desired number of successfully finished pods the job should be run with.  Setting to nil means that the success of any pod signals the success of all pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism is limited to 1 and the success of that pod signals the success of the job. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
/// * [manualSelector] - manualSelector controls generation of pod labels and pod selectors. Leave `manualSelector` unset unless you are certain what you are doing. When false or unset, the system pick labels unique to this job and appends those labels to the pod template.  When true, the user is responsible for picking unique labels and specifying the selector.  Failure to pick a unique label may cause this and other jobs to not function correctly.  However, You may see `manualSelector=true` in jobs that were created with the old `extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector
/// * [parallelism] - Specifies the maximum desired number of pods the job should run at any given time. The actual number of pods running in steady state will be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
/// * [podFailurePolicy] 
/// * [selector] 
/// * [suspend] - Suspend specifies whether the Job controller should create Pods or not. If a Job is created with suspend set to true, no Pods are created by the Job controller. If a Job is suspended after creation (i.e. the flag goes from false to true), the Job controller will delete all active Pods associated with this Job. Users must design their workload to gracefully handle this. Suspending a Job will reset the StartTime field of the Job, effectively resetting the ActiveDeadlineSeconds timer too. Defaults to false.
/// * [template] 
/// * [ttlSecondsAfterFinished] - ttlSecondsAfterFinished limits the lifetime of a Job that has finished execution (either Complete or Failed). If this field is set, ttlSecondsAfterFinished after the Job finishes, it is eligible to be automatically deleted. When the Job is being deleted, its lifecycle guarantees (e.g. finalizers) will be honored. If this field is unset, the Job won't be automatically deleted. If this field is set to zero, the Job becomes eligible to be deleted immediately after it finishes.
@BuiltValue()
abstract class IoK8sApiBatchV1JobSpec implements Built<IoK8sApiBatchV1JobSpec, IoK8sApiBatchV1JobSpecBuilder> {
  /// Specifies the duration in seconds relative to the startTime that the job may be continuously active before the system tries to terminate it; value must be positive integer. If a Job is suspended (at creation or through an update), this timer will effectively be stopped and reset when the Job is resumed again.
  @BuiltValueField(wireName: r'activeDeadlineSeconds')
  int? get activeDeadlineSeconds;

  /// Specifies the number of retries before marking this job failed. Defaults to 6
  @BuiltValueField(wireName: r'backoffLimit')
  int? get backoffLimit;

  /// CompletionMode specifies how Pod completions are tracked. It can be `NonIndexed` (default) or `Indexed`.  `NonIndexed` means that the Job is considered complete when there have been .spec.completions successfully completed Pods. Each Pod completion is homologous to each other.  `Indexed` means that the Pods of a Job get an associated completion index from 0 to (.spec.completions - 1), available in the annotation batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5. In addition, The Pod name takes the form `$(job-name)-$(index)-$(random-string)`, the Pod hostname takes the form `$(job-name)-$(index)`.  More completion modes can be added in the future. If the Job controller observes a mode that it doesn't recognize, which is possible during upgrades due to version skew, the controller skips updates for the Job.
  @BuiltValueField(wireName: r'completionMode')
  String? get completionMode;

  /// Specifies the desired number of successfully finished pods the job should be run with.  Setting to nil means that the success of any pod signals the success of all pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism is limited to 1 and the success of that pod signals the success of the job. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  @BuiltValueField(wireName: r'completions')
  int? get completions;

  /// manualSelector controls generation of pod labels and pod selectors. Leave `manualSelector` unset unless you are certain what you are doing. When false or unset, the system pick labels unique to this job and appends those labels to the pod template.  When true, the user is responsible for picking unique labels and specifying the selector.  Failure to pick a unique label may cause this and other jobs to not function correctly.  However, You may see `manualSelector=true` in jobs that were created with the old `extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector
  @BuiltValueField(wireName: r'manualSelector')
  bool? get manualSelector;

  /// Specifies the maximum desired number of pods the job should run at any given time. The actual number of pods running in steady state will be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  @BuiltValueField(wireName: r'parallelism')
  int? get parallelism;

  @BuiltValueField(wireName: r'podFailurePolicy')
  IoK8sApiBatchV1PodFailurePolicy? get podFailurePolicy;

  @BuiltValueField(wireName: r'selector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector? get selector;

  /// Suspend specifies whether the Job controller should create Pods or not. If a Job is created with suspend set to true, no Pods are created by the Job controller. If a Job is suspended after creation (i.e. the flag goes from false to true), the Job controller will delete all active Pods associated with this Job. Users must design their workload to gracefully handle this. Suspending a Job will reset the StartTime field of the Job, effectively resetting the ActiveDeadlineSeconds timer too. Defaults to false.
  @BuiltValueField(wireName: r'suspend')
  bool? get suspend;

  @BuiltValueField(wireName: r'template')
  IoK8sApiCoreV1PodTemplateSpec get template;

  /// ttlSecondsAfterFinished limits the lifetime of a Job that has finished execution (either Complete or Failed). If this field is set, ttlSecondsAfterFinished after the Job finishes, it is eligible to be automatically deleted. When the Job is being deleted, its lifecycle guarantees (e.g. finalizers) will be honored. If this field is unset, the Job won't be automatically deleted. If this field is set to zero, the Job becomes eligible to be deleted immediately after it finishes.
  @BuiltValueField(wireName: r'ttlSecondsAfterFinished')
  int? get ttlSecondsAfterFinished;

  IoK8sApiBatchV1JobSpec._();

  factory IoK8sApiBatchV1JobSpec([void updates(IoK8sApiBatchV1JobSpecBuilder b)]) = _$IoK8sApiBatchV1JobSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiBatchV1JobSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiBatchV1JobSpec> get serializer => _$IoK8sApiBatchV1JobSpecSerializer();
}

class _$IoK8sApiBatchV1JobSpecSerializer implements PrimitiveSerializer<IoK8sApiBatchV1JobSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiBatchV1JobSpec, _$IoK8sApiBatchV1JobSpec];

  @override
  final String wireName = r'IoK8sApiBatchV1JobSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiBatchV1JobSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.activeDeadlineSeconds != null) {
      yield r'activeDeadlineSeconds';
      yield serializers.serialize(
        object.activeDeadlineSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.backoffLimit != null) {
      yield r'backoffLimit';
      yield serializers.serialize(
        object.backoffLimit,
        specifiedType: const FullType(int),
      );
    }
    if (object.completionMode != null) {
      yield r'completionMode';
      yield serializers.serialize(
        object.completionMode,
        specifiedType: const FullType(String),
      );
    }
    if (object.completions != null) {
      yield r'completions';
      yield serializers.serialize(
        object.completions,
        specifiedType: const FullType(int),
      );
    }
    if (object.manualSelector != null) {
      yield r'manualSelector';
      yield serializers.serialize(
        object.manualSelector,
        specifiedType: const FullType(bool),
      );
    }
    if (object.parallelism != null) {
      yield r'parallelism';
      yield serializers.serialize(
        object.parallelism,
        specifiedType: const FullType(int),
      );
    }
    if (object.podFailurePolicy != null) {
      yield r'podFailurePolicy';
      yield serializers.serialize(
        object.podFailurePolicy,
        specifiedType: const FullType(IoK8sApiBatchV1PodFailurePolicy),
      );
    }
    if (object.selector != null) {
      yield r'selector';
      yield serializers.serialize(
        object.selector,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
      );
    }
    if (object.suspend != null) {
      yield r'suspend';
      yield serializers.serialize(
        object.suspend,
        specifiedType: const FullType(bool),
      );
    }
    yield r'template';
    yield serializers.serialize(
      object.template,
      specifiedType: const FullType(IoK8sApiCoreV1PodTemplateSpec),
    );
    if (object.ttlSecondsAfterFinished != null) {
      yield r'ttlSecondsAfterFinished';
      yield serializers.serialize(
        object.ttlSecondsAfterFinished,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiBatchV1JobSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiBatchV1JobSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'activeDeadlineSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.activeDeadlineSeconds = valueDes;
          break;
        case r'backoffLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.backoffLimit = valueDes;
          break;
        case r'completionMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.completionMode = valueDes;
          break;
        case r'completions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.completions = valueDes;
          break;
        case r'manualSelector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.manualSelector = valueDes;
          break;
        case r'parallelism':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.parallelism = valueDes;
          break;
        case r'podFailurePolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiBatchV1PodFailurePolicy),
          ) as IoK8sApiBatchV1PodFailurePolicy;
          result.podFailurePolicy.replace(valueDes);
          break;
        case r'selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
          result.selector.replace(valueDes);
          break;
        case r'suspend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.suspend = valueDes;
          break;
        case r'template':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PodTemplateSpec),
          ) as IoK8sApiCoreV1PodTemplateSpec;
          result.template.replace(valueDes);
          break;
        case r'ttlSecondsAfterFinished':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ttlSecondsAfterFinished = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiBatchV1JobSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiBatchV1JobSpecBuilder();
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

