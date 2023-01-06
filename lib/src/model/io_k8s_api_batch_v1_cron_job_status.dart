//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_object_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_batch_v1_cron_job_status.g.dart';

/// CronJobStatus represents the current state of a cron job.
///
/// Properties:
/// * [active] - A list of pointers to currently running jobs.
/// * [lastScheduleTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [lastSuccessfulTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
@BuiltValue()
abstract class IoK8sApiBatchV1CronJobStatus implements Built<IoK8sApiBatchV1CronJobStatus, IoK8sApiBatchV1CronJobStatusBuilder> {
  /// A list of pointers to currently running jobs.
  @BuiltValueField(wireName: r'active')
  BuiltList<IoK8sApiCoreV1ObjectReference>? get active;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastScheduleTime')
  DateTime? get lastScheduleTime;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastSuccessfulTime')
  DateTime? get lastSuccessfulTime;

  IoK8sApiBatchV1CronJobStatus._();

  factory IoK8sApiBatchV1CronJobStatus([void updates(IoK8sApiBatchV1CronJobStatusBuilder b)]) = _$IoK8sApiBatchV1CronJobStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiBatchV1CronJobStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiBatchV1CronJobStatus> get serializer => _$IoK8sApiBatchV1CronJobStatusSerializer();
}

class _$IoK8sApiBatchV1CronJobStatusSerializer implements PrimitiveSerializer<IoK8sApiBatchV1CronJobStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiBatchV1CronJobStatus, _$IoK8sApiBatchV1CronJobStatus];

  @override
  final String wireName = r'IoK8sApiBatchV1CronJobStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiBatchV1CronJobStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ObjectReference)]),
      );
    }
    if (object.lastScheduleTime != null) {
      yield r'lastScheduleTime';
      yield serializers.serialize(
        object.lastScheduleTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastSuccessfulTime != null) {
      yield r'lastSuccessfulTime';
      yield serializers.serialize(
        object.lastSuccessfulTime,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiBatchV1CronJobStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiBatchV1CronJobStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ObjectReference)]),
          ) as BuiltList<IoK8sApiCoreV1ObjectReference>;
          result.active.replace(valueDes);
          break;
        case r'lastScheduleTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastScheduleTime = valueDes;
          break;
        case r'lastSuccessfulTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastSuccessfulTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiBatchV1CronJobStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiBatchV1CronJobStatusBuilder();
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

