//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_capabilities.g.dart';

/// Adds and removes POSIX capabilities from running containers.
///
/// Properties:
/// * [add] - Added capabilities
/// * [drop] - Removed capabilities
@BuiltValue()
abstract class IoK8sApiCoreV1Capabilities implements Built<IoK8sApiCoreV1Capabilities, IoK8sApiCoreV1CapabilitiesBuilder> {
  /// Added capabilities
  @BuiltValueField(wireName: r'add')
  BuiltList<String>? get add;

  /// Removed capabilities
  @BuiltValueField(wireName: r'drop')
  BuiltList<String>? get drop;

  IoK8sApiCoreV1Capabilities._();

  factory IoK8sApiCoreV1Capabilities([void updates(IoK8sApiCoreV1CapabilitiesBuilder b)]) = _$IoK8sApiCoreV1Capabilities;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1CapabilitiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1Capabilities> get serializer => _$IoK8sApiCoreV1CapabilitiesSerializer();
}

class _$IoK8sApiCoreV1CapabilitiesSerializer implements PrimitiveSerializer<IoK8sApiCoreV1Capabilities> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1Capabilities, _$IoK8sApiCoreV1Capabilities];

  @override
  final String wireName = r'IoK8sApiCoreV1Capabilities';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1Capabilities object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.add != null) {
      yield r'add';
      yield serializers.serialize(
        object.add,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.drop != null) {
      yield r'drop';
      yield serializers.serialize(
        object.drop,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1Capabilities object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1CapabilitiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'add':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.add.replace(valueDes);
          break;
        case r'drop':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.drop.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1Capabilities deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1CapabilitiesBuilder();
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

