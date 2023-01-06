//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_namespace_condition.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_namespace_status.g.dart';

/// NamespaceStatus is information about the current status of a Namespace.
///
/// Properties:
/// * [conditions] - Represents the latest available observations of a namespace's current state.
/// * [phase] - Phase is the current lifecycle phase of the namespace. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/  
@BuiltValue()
abstract class IoK8sApiCoreV1NamespaceStatus implements Built<IoK8sApiCoreV1NamespaceStatus, IoK8sApiCoreV1NamespaceStatusBuilder> {
  /// Represents the latest available observations of a namespace's current state.
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiCoreV1NamespaceCondition>? get conditions;

  /// Phase is the current lifecycle phase of the namespace. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/  
  @BuiltValueField(wireName: r'phase')
  String? get phase;

  IoK8sApiCoreV1NamespaceStatus._();

  factory IoK8sApiCoreV1NamespaceStatus([void updates(IoK8sApiCoreV1NamespaceStatusBuilder b)]) = _$IoK8sApiCoreV1NamespaceStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1NamespaceStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1NamespaceStatus> get serializer => _$IoK8sApiCoreV1NamespaceStatusSerializer();
}

class _$IoK8sApiCoreV1NamespaceStatusSerializer implements PrimitiveSerializer<IoK8sApiCoreV1NamespaceStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1NamespaceStatus, _$IoK8sApiCoreV1NamespaceStatus];

  @override
  final String wireName = r'IoK8sApiCoreV1NamespaceStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1NamespaceStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1NamespaceCondition)]),
      );
    }
    if (object.phase != null) {
      yield r'phase';
      yield serializers.serialize(
        object.phase,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1NamespaceStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1NamespaceStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1NamespaceCondition)]),
          ) as BuiltList<IoK8sApiCoreV1NamespaceCondition>;
          result.conditions.replace(valueDes);
          break;
        case r'phase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phase = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1NamespaceStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1NamespaceStatusBuilder();
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

