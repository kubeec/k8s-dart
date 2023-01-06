//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_secret_reference.g.dart';

/// SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
///
/// Properties:
/// * [name] - name is unique within a namespace to reference a secret resource.
/// * [namespace] - namespace defines the space within which the secret name must be unique.
@BuiltValue()
abstract class IoK8sApiCoreV1SecretReference implements Built<IoK8sApiCoreV1SecretReference, IoK8sApiCoreV1SecretReferenceBuilder> {
  /// name is unique within a namespace to reference a secret resource.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// namespace defines the space within which the secret name must be unique.
  @BuiltValueField(wireName: r'namespace')
  String? get namespace;

  IoK8sApiCoreV1SecretReference._();

  factory IoK8sApiCoreV1SecretReference([void updates(IoK8sApiCoreV1SecretReferenceBuilder b)]) = _$IoK8sApiCoreV1SecretReference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1SecretReferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1SecretReference> get serializer => _$IoK8sApiCoreV1SecretReferenceSerializer();
}

class _$IoK8sApiCoreV1SecretReferenceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1SecretReference> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1SecretReference, _$IoK8sApiCoreV1SecretReference];

  @override
  final String wireName = r'IoK8sApiCoreV1SecretReference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1SecretReference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.namespace != null) {
      yield r'namespace';
      yield serializers.serialize(
        object.namespace,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1SecretReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1SecretReferenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'namespace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namespace = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1SecretReference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1SecretReferenceBuilder();
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

