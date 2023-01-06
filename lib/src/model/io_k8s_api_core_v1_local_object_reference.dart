//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_local_object_reference.g.dart';

/// LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
///
/// Properties:
/// * [name] - Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
@BuiltValue()
abstract class IoK8sApiCoreV1LocalObjectReference implements Built<IoK8sApiCoreV1LocalObjectReference, IoK8sApiCoreV1LocalObjectReferenceBuilder> {
  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @BuiltValueField(wireName: r'name')
  String? get name;

  IoK8sApiCoreV1LocalObjectReference._();

  factory IoK8sApiCoreV1LocalObjectReference([void updates(IoK8sApiCoreV1LocalObjectReferenceBuilder b)]) = _$IoK8sApiCoreV1LocalObjectReference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1LocalObjectReferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1LocalObjectReference> get serializer => _$IoK8sApiCoreV1LocalObjectReferenceSerializer();
}

class _$IoK8sApiCoreV1LocalObjectReferenceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1LocalObjectReference> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1LocalObjectReference, _$IoK8sApiCoreV1LocalObjectReference];

  @override
  final String wireName = r'IoK8sApiCoreV1LocalObjectReference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1LocalObjectReference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1LocalObjectReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1LocalObjectReferenceBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1LocalObjectReference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1LocalObjectReferenceBuilder();
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

