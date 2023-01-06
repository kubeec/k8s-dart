//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_event_source.g.dart';

/// EventSource contains information for an event.
///
/// Properties:
/// * [component] - Component from which the event is generated.
/// * [host] - Node name on which the event is generated.
@BuiltValue()
abstract class IoK8sApiCoreV1EventSource implements Built<IoK8sApiCoreV1EventSource, IoK8sApiCoreV1EventSourceBuilder> {
  /// Component from which the event is generated.
  @BuiltValueField(wireName: r'component')
  String? get component;

  /// Node name on which the event is generated.
  @BuiltValueField(wireName: r'host')
  String? get host;

  IoK8sApiCoreV1EventSource._();

  factory IoK8sApiCoreV1EventSource([void updates(IoK8sApiCoreV1EventSourceBuilder b)]) = _$IoK8sApiCoreV1EventSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1EventSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1EventSource> get serializer => _$IoK8sApiCoreV1EventSourceSerializer();
}

class _$IoK8sApiCoreV1EventSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1EventSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1EventSource, _$IoK8sApiCoreV1EventSource];

  @override
  final String wireName = r'IoK8sApiCoreV1EventSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1EventSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.component != null) {
      yield r'component';
      yield serializers.serialize(
        object.component,
        specifiedType: const FullType(String),
      );
    }
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1EventSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1EventSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'component':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.component = valueDes;
          break;
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.host = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1EventSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1EventSourceBuilder();
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

