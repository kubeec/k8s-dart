//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_secret_key_selector.g.dart';

/// SecretKeySelector selects a key of a Secret.
///
/// Properties:
/// * [key] - The key of the secret to select from.  Must be a valid secret key.
/// * [name] - Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
/// * [optional] - Specify whether the Secret or its key must be defined
@BuiltValue()
abstract class IoK8sApiCoreV1SecretKeySelector implements Built<IoK8sApiCoreV1SecretKeySelector, IoK8sApiCoreV1SecretKeySelectorBuilder> {
  /// The key of the secret to select from.  Must be a valid secret key.
  @BuiltValueField(wireName: r'key')
  String get key;

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Specify whether the Secret or its key must be defined
  @BuiltValueField(wireName: r'optional')
  bool? get optional;

  IoK8sApiCoreV1SecretKeySelector._();

  factory IoK8sApiCoreV1SecretKeySelector([void updates(IoK8sApiCoreV1SecretKeySelectorBuilder b)]) = _$IoK8sApiCoreV1SecretKeySelector;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1SecretKeySelectorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1SecretKeySelector> get serializer => _$IoK8sApiCoreV1SecretKeySelectorSerializer();
}

class _$IoK8sApiCoreV1SecretKeySelectorSerializer implements PrimitiveSerializer<IoK8sApiCoreV1SecretKeySelector> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1SecretKeySelector, _$IoK8sApiCoreV1SecretKeySelector];

  @override
  final String wireName = r'IoK8sApiCoreV1SecretKeySelector';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1SecretKeySelector object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.optional != null) {
      yield r'optional';
      yield serializers.serialize(
        object.optional,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1SecretKeySelector object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1SecretKeySelectorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'optional':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.optional = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1SecretKeySelector deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1SecretKeySelectorBuilder();
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

