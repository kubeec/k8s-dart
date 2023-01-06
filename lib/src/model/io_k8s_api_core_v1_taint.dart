//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_taint.g.dart';

/// The node this Taint is attached to has the \"effect\" on any pod that does not tolerate the Taint.
///
/// Properties:
/// * [effect] - Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.  
/// * [key] - Required. The taint key to be applied to a node.
/// * [timeAdded] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [value] - The taint value corresponding to the taint key.
@BuiltValue()
abstract class IoK8sApiCoreV1Taint implements Built<IoK8sApiCoreV1Taint, IoK8sApiCoreV1TaintBuilder> {
  /// Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.  
  @BuiltValueField(wireName: r'effect')
  String get effect;

  /// Required. The taint key to be applied to a node.
  @BuiltValueField(wireName: r'key')
  String get key;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'timeAdded')
  DateTime? get timeAdded;

  /// The taint value corresponding to the taint key.
  @BuiltValueField(wireName: r'value')
  String? get value;

  IoK8sApiCoreV1Taint._();

  factory IoK8sApiCoreV1Taint([void updates(IoK8sApiCoreV1TaintBuilder b)]) = _$IoK8sApiCoreV1Taint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1TaintBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1Taint> get serializer => _$IoK8sApiCoreV1TaintSerializer();
}

class _$IoK8sApiCoreV1TaintSerializer implements PrimitiveSerializer<IoK8sApiCoreV1Taint> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1Taint, _$IoK8sApiCoreV1Taint];

  @override
  final String wireName = r'IoK8sApiCoreV1Taint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1Taint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'effect';
    yield serializers.serialize(
      object.effect,
      specifiedType: const FullType(String),
    );
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    if (object.timeAdded != null) {
      yield r'timeAdded';
      yield serializers.serialize(
        object.timeAdded,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1Taint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1TaintBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'effect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.effect = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'timeAdded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timeAdded = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1Taint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1TaintBuilder();
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

