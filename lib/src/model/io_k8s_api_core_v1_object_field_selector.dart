//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_object_field_selector.g.dart';

/// ObjectFieldSelector selects an APIVersioned field of an object.
///
/// Properties:
/// * [apiVersion] - Version of the schema the FieldPath is written in terms of, defaults to \"v1\".
/// * [fieldPath] - Path of the field to select in the specified API version.
@BuiltValue()
abstract class IoK8sApiCoreV1ObjectFieldSelector implements Built<IoK8sApiCoreV1ObjectFieldSelector, IoK8sApiCoreV1ObjectFieldSelectorBuilder> {
  /// Version of the schema the FieldPath is written in terms of, defaults to \"v1\".
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Path of the field to select in the specified API version.
  @BuiltValueField(wireName: r'fieldPath')
  String get fieldPath;

  IoK8sApiCoreV1ObjectFieldSelector._();

  factory IoK8sApiCoreV1ObjectFieldSelector([void updates(IoK8sApiCoreV1ObjectFieldSelectorBuilder b)]) = _$IoK8sApiCoreV1ObjectFieldSelector;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ObjectFieldSelectorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ObjectFieldSelector> get serializer => _$IoK8sApiCoreV1ObjectFieldSelectorSerializer();
}

class _$IoK8sApiCoreV1ObjectFieldSelectorSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ObjectFieldSelector> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ObjectFieldSelector, _$IoK8sApiCoreV1ObjectFieldSelector];

  @override
  final String wireName = r'IoK8sApiCoreV1ObjectFieldSelector';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ObjectFieldSelector object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'fieldPath';
    yield serializers.serialize(
      object.fieldPath,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ObjectFieldSelector object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ObjectFieldSelectorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiVersion = valueDes;
          break;
        case r'fieldPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fieldPath = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ObjectFieldSelector deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ObjectFieldSelectorBuilder();
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

