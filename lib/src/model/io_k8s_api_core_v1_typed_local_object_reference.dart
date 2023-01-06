//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_typed_local_object_reference.g.dart';

/// TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
///
/// Properties:
/// * [apiGroup] - APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
/// * [kind] - Kind is the type of resource being referenced
/// * [name] - Name is the name of resource being referenced
@BuiltValue()
abstract class IoK8sApiCoreV1TypedLocalObjectReference implements Built<IoK8sApiCoreV1TypedLocalObjectReference, IoK8sApiCoreV1TypedLocalObjectReferenceBuilder> {
  /// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  @BuiltValueField(wireName: r'apiGroup')
  String? get apiGroup;

  /// Kind is the type of resource being referenced
  @BuiltValueField(wireName: r'kind')
  String get kind;

  /// Name is the name of resource being referenced
  @BuiltValueField(wireName: r'name')
  String get name;

  IoK8sApiCoreV1TypedLocalObjectReference._();

  factory IoK8sApiCoreV1TypedLocalObjectReference([void updates(IoK8sApiCoreV1TypedLocalObjectReferenceBuilder b)]) = _$IoK8sApiCoreV1TypedLocalObjectReference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1TypedLocalObjectReferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1TypedLocalObjectReference> get serializer => _$IoK8sApiCoreV1TypedLocalObjectReferenceSerializer();
}

class _$IoK8sApiCoreV1TypedLocalObjectReferenceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1TypedLocalObjectReference> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1TypedLocalObjectReference, _$IoK8sApiCoreV1TypedLocalObjectReference];

  @override
  final String wireName = r'IoK8sApiCoreV1TypedLocalObjectReference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1TypedLocalObjectReference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiGroup != null) {
      yield r'apiGroup';
      yield serializers.serialize(
        object.apiGroup,
        specifiedType: const FullType(String),
      );
    }
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1TypedLocalObjectReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1TypedLocalObjectReferenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiGroup = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
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
  IoK8sApiCoreV1TypedLocalObjectReference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1TypedLocalObjectReferenceBuilder();
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

