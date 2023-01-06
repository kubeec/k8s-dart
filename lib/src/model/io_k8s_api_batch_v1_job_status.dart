//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_batch_v1_uncounted_terminated_pods.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_job_condition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_batch_v1_job_status.g.dart';

/// JobStatus represents the current state of a Job.
///
/// Properties:
/// * [active] - The number of pending and running pods.
/// * [completedIndexes] - CompletedIndexes holds the completed indexes when .spec.completionMode = \"Indexed\" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as \"1,3-5,7\".
/// * [completionTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [conditions] - The latest available observations of an object's current state. When a Job fails, one of the conditions will have type \"Failed\" and status true. When a Job is suspended, one of the conditions will have type \"Suspended\" and status true; when the Job is resumed, the status of this condition will become false. When a Job is completed, one of the conditions will have type \"Complete\" and status true. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
/// * [failed] - The number of pods which reached phase Failed.
/// * [ready] - The number of pods which have a Ready condition.  This field is beta-level. The job controller populates the field when the feature gate JobReadyPods is enabled (enabled by default).
/// * [startTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [succeeded] - The number of pods which reached phase Succeeded.
/// * [uncountedTerminatedPods] 
@BuiltValue()
abstract class IoK8sApiBatchV1JobStatus implements Built<IoK8sApiBatchV1JobStatus, IoK8sApiBatchV1JobStatusBuilder> {
  /// The number of pending and running pods.
  @BuiltValueField(wireName: r'active')
  int? get active;

  /// CompletedIndexes holds the completed indexes when .spec.completionMode = \"Indexed\" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as \"1,3-5,7\".
  @BuiltValueField(wireName: r'completedIndexes')
  String? get completedIndexes;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'completionTime')
  DateTime? get completionTime;

  /// The latest available observations of an object's current state. When a Job fails, one of the conditions will have type \"Failed\" and status true. When a Job is suspended, one of the conditions will have type \"Suspended\" and status true; when the Job is resumed, the status of this condition will become false. When a Job is completed, one of the conditions will have type \"Complete\" and status true. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiBatchV1JobCondition>? get conditions;

  /// The number of pods which reached phase Failed.
  @BuiltValueField(wireName: r'failed')
  int? get failed;

  /// The number of pods which have a Ready condition.  This field is beta-level. The job controller populates the field when the feature gate JobReadyPods is enabled (enabled by default).
  @BuiltValueField(wireName: r'ready')
  int? get ready;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'startTime')
  DateTime? get startTime;

  /// The number of pods which reached phase Succeeded.
  @BuiltValueField(wireName: r'succeeded')
  int? get succeeded;

  @BuiltValueField(wireName: r'uncountedTerminatedPods')
  IoK8sApiBatchV1UncountedTerminatedPods? get uncountedTerminatedPods;

  IoK8sApiBatchV1JobStatus._();

  factory IoK8sApiBatchV1JobStatus([void updates(IoK8sApiBatchV1JobStatusBuilder b)]) = _$IoK8sApiBatchV1JobStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiBatchV1JobStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiBatchV1JobStatus> get serializer => _$IoK8sApiBatchV1JobStatusSerializer();
}

class _$IoK8sApiBatchV1JobStatusSerializer implements PrimitiveSerializer<IoK8sApiBatchV1JobStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiBatchV1JobStatus, _$IoK8sApiBatchV1JobStatus];

  @override
  final String wireName = r'IoK8sApiBatchV1JobStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiBatchV1JobStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(int),
      );
    }
    if (object.completedIndexes != null) {
      yield r'completedIndexes';
      yield serializers.serialize(
        object.completedIndexes,
        specifiedType: const FullType(String),
      );
    }
    if (object.completionTime != null) {
      yield r'completionTime';
      yield serializers.serialize(
        object.completionTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiBatchV1JobCondition)]),
      );
    }
    if (object.failed != null) {
      yield r'failed';
      yield serializers.serialize(
        object.failed,
        specifiedType: const FullType(int),
      );
    }
    if (object.ready != null) {
      yield r'ready';
      yield serializers.serialize(
        object.ready,
        specifiedType: const FullType(int),
      );
    }
    if (object.startTime != null) {
      yield r'startTime';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.succeeded != null) {
      yield r'succeeded';
      yield serializers.serialize(
        object.succeeded,
        specifiedType: const FullType(int),
      );
    }
    if (object.uncountedTerminatedPods != null) {
      yield r'uncountedTerminatedPods';
      yield serializers.serialize(
        object.uncountedTerminatedPods,
        specifiedType: const FullType(IoK8sApiBatchV1UncountedTerminatedPods),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiBatchV1JobStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiBatchV1JobStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.active = valueDes;
          break;
        case r'completedIndexes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.completedIndexes = valueDes;
          break;
        case r'completionTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.completionTime = valueDes;
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiBatchV1JobCondition)]),
          ) as BuiltList<IoK8sApiBatchV1JobCondition>;
          result.conditions.replace(valueDes);
          break;
        case r'failed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.failed = valueDes;
          break;
        case r'ready':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ready = valueDes;
          break;
        case r'startTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startTime = valueDes;
          break;
        case r'succeeded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.succeeded = valueDes;
          break;
        case r'uncountedTerminatedPods':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiBatchV1UncountedTerminatedPods),
          ) as IoK8sApiBatchV1UncountedTerminatedPods;
          result.uncountedTerminatedPods.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiBatchV1JobStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiBatchV1JobStatusBuilder();
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

