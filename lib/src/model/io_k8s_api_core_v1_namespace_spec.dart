//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_namespace_spec.g.dart';

/// NamespaceSpec describes the attributes on a Namespace.
///
/// Properties:
/// * [finalizers] - Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
@BuiltValue()
abstract class IoK8sApiCoreV1NamespaceSpec implements Built<IoK8sApiCoreV1NamespaceSpec, IoK8sApiCoreV1NamespaceSpecBuilder> {
  /// Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
  @BuiltValueField(wireName: r'finalizers')
  BuiltList<String>? get finalizers;

  IoK8sApiCoreV1NamespaceSpec._();

  factory IoK8sApiCoreV1NamespaceSpec([void updates(IoK8sApiCoreV1NamespaceSpecBuilder b)]) = _$IoK8sApiCoreV1NamespaceSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1NamespaceSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1NamespaceSpec> get serializer => _$IoK8sApiCoreV1NamespaceSpecSerializer();
}

class _$IoK8sApiCoreV1NamespaceSpecSerializer implements PrimitiveSerializer<IoK8sApiCoreV1NamespaceSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1NamespaceSpec, _$IoK8sApiCoreV1NamespaceSpec];

  @override
  final String wireName = r'IoK8sApiCoreV1NamespaceSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1NamespaceSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.finalizers != null) {
      yield r'finalizers';
      yield serializers.serialize(
        object.finalizers,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1NamespaceSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1NamespaceSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'finalizers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.finalizers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1NamespaceSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1NamespaceSpecBuilder();
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

