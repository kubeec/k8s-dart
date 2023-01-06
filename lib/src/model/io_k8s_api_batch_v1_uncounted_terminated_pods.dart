//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_batch_v1_uncounted_terminated_pods.g.dart';

/// UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been accounted in Job status counters.
///
/// Properties:
/// * [failed] - Failed holds UIDs of failed Pods.
/// * [succeeded] - Succeeded holds UIDs of succeeded Pods.
@BuiltValue()
abstract class IoK8sApiBatchV1UncountedTerminatedPods implements Built<IoK8sApiBatchV1UncountedTerminatedPods, IoK8sApiBatchV1UncountedTerminatedPodsBuilder> {
  /// Failed holds UIDs of failed Pods.
  @BuiltValueField(wireName: r'failed')
  BuiltList<String>? get failed;

  /// Succeeded holds UIDs of succeeded Pods.
  @BuiltValueField(wireName: r'succeeded')
  BuiltList<String>? get succeeded;

  IoK8sApiBatchV1UncountedTerminatedPods._();

  factory IoK8sApiBatchV1UncountedTerminatedPods([void updates(IoK8sApiBatchV1UncountedTerminatedPodsBuilder b)]) = _$IoK8sApiBatchV1UncountedTerminatedPods;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiBatchV1UncountedTerminatedPodsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiBatchV1UncountedTerminatedPods> get serializer => _$IoK8sApiBatchV1UncountedTerminatedPodsSerializer();
}

class _$IoK8sApiBatchV1UncountedTerminatedPodsSerializer implements PrimitiveSerializer<IoK8sApiBatchV1UncountedTerminatedPods> {
  @override
  final Iterable<Type> types = const [IoK8sApiBatchV1UncountedTerminatedPods, _$IoK8sApiBatchV1UncountedTerminatedPods];

  @override
  final String wireName = r'IoK8sApiBatchV1UncountedTerminatedPods';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiBatchV1UncountedTerminatedPods object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.failed != null) {
      yield r'failed';
      yield serializers.serialize(
        object.failed,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.succeeded != null) {
      yield r'succeeded';
      yield serializers.serialize(
        object.succeeded,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiBatchV1UncountedTerminatedPods object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiBatchV1UncountedTerminatedPodsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'failed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.failed.replace(valueDes);
          break;
        case r'succeeded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.succeeded.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiBatchV1UncountedTerminatedPods deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiBatchV1UncountedTerminatedPodsBuilder();
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

