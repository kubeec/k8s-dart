//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_http_header.g.dart';

/// HTTPHeader describes a custom header to be used in HTTP probes
///
/// Properties:
/// * [name] - The header field name
/// * [value] - The header field value
@BuiltValue()
abstract class IoK8sApiCoreV1HTTPHeader implements Built<IoK8sApiCoreV1HTTPHeader, IoK8sApiCoreV1HTTPHeaderBuilder> {
  /// The header field name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The header field value
  @BuiltValueField(wireName: r'value')
  String get value;

  IoK8sApiCoreV1HTTPHeader._();

  factory IoK8sApiCoreV1HTTPHeader([void updates(IoK8sApiCoreV1HTTPHeaderBuilder b)]) = _$IoK8sApiCoreV1HTTPHeader;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1HTTPHeaderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1HTTPHeader> get serializer => _$IoK8sApiCoreV1HTTPHeaderSerializer();
}

class _$IoK8sApiCoreV1HTTPHeaderSerializer implements PrimitiveSerializer<IoK8sApiCoreV1HTTPHeader> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1HTTPHeader, _$IoK8sApiCoreV1HTTPHeader];

  @override
  final String wireName = r'IoK8sApiCoreV1HTTPHeader';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1HTTPHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1HTTPHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1HTTPHeaderBuilder result,
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
  IoK8sApiCoreV1HTTPHeader deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1HTTPHeaderBuilder();
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

