//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authorization_v1_non_resource_attributes.g.dart';

/// NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
///
/// Properties:
/// * [path] - Path is the URL path of the request
/// * [verb] - Verb is the standard HTTP verb
@BuiltValue()
abstract class IoK8sApiAuthorizationV1NonResourceAttributes implements Built<IoK8sApiAuthorizationV1NonResourceAttributes, IoK8sApiAuthorizationV1NonResourceAttributesBuilder> {
  /// Path is the URL path of the request
  @BuiltValueField(wireName: r'path')
  String? get path;

  /// Verb is the standard HTTP verb
  @BuiltValueField(wireName: r'verb')
  String? get verb;

  IoK8sApiAuthorizationV1NonResourceAttributes._();

  factory IoK8sApiAuthorizationV1NonResourceAttributes([void updates(IoK8sApiAuthorizationV1NonResourceAttributesBuilder b)]) = _$IoK8sApiAuthorizationV1NonResourceAttributes;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthorizationV1NonResourceAttributesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthorizationV1NonResourceAttributes> get serializer => _$IoK8sApiAuthorizationV1NonResourceAttributesSerializer();
}

class _$IoK8sApiAuthorizationV1NonResourceAttributesSerializer implements PrimitiveSerializer<IoK8sApiAuthorizationV1NonResourceAttributes> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthorizationV1NonResourceAttributes, _$IoK8sApiAuthorizationV1NonResourceAttributes];

  @override
  final String wireName = r'IoK8sApiAuthorizationV1NonResourceAttributes';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthorizationV1NonResourceAttributes object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.verb != null) {
      yield r'verb';
      yield serializers.serialize(
        object.verb,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthorizationV1NonResourceAttributes object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthorizationV1NonResourceAttributesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'verb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.verb = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthorizationV1NonResourceAttributes deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthorizationV1NonResourceAttributesBuilder();
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

