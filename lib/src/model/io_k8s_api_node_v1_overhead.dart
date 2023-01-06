//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_node_v1_overhead.g.dart';

/// Overhead structure represents the resource overhead associated with running a pod.
///
/// Properties:
/// * [podFixed] - PodFixed represents the fixed resource overhead associated with running a pod.
@BuiltValue()
abstract class IoK8sApiNodeV1Overhead implements Built<IoK8sApiNodeV1Overhead, IoK8sApiNodeV1OverheadBuilder> {
  /// PodFixed represents the fixed resource overhead associated with running a pod.
  @BuiltValueField(wireName: r'podFixed')
  BuiltMap<String, String>? get podFixed;

  IoK8sApiNodeV1Overhead._();

  factory IoK8sApiNodeV1Overhead([void updates(IoK8sApiNodeV1OverheadBuilder b)]) = _$IoK8sApiNodeV1Overhead;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNodeV1OverheadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNodeV1Overhead> get serializer => _$IoK8sApiNodeV1OverheadSerializer();
}

class _$IoK8sApiNodeV1OverheadSerializer implements PrimitiveSerializer<IoK8sApiNodeV1Overhead> {
  @override
  final Iterable<Type> types = const [IoK8sApiNodeV1Overhead, _$IoK8sApiNodeV1Overhead];

  @override
  final String wireName = r'IoK8sApiNodeV1Overhead';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNodeV1Overhead object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.podFixed != null) {
      yield r'podFixed';
      yield serializers.serialize(
        object.podFixed,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNodeV1Overhead object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNodeV1OverheadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'podFixed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.podFixed.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNodeV1Overhead deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNodeV1OverheadBuilder();
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

