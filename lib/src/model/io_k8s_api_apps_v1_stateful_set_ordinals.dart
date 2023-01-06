//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_stateful_set_ordinals.g.dart';

/// StatefulSetOrdinals describes the policy used for replica ordinal assignment in this StatefulSet.
///
/// Properties:
/// * [start] - start is the number representing the first replica's index. It may be used to number replicas from an alternate index (eg: 1-indexed) over the default 0-indexed names, or to orchestrate progressive movement of replicas from one StatefulSet to another. If set, replica indices will be in the range:   [.spec.ordinals.start, .spec.ordinals.start + .spec.replicas). If unset, defaults to 0. Replica indices will be in the range:   [0, .spec.replicas).
@BuiltValue()
abstract class IoK8sApiAppsV1StatefulSetOrdinals implements Built<IoK8sApiAppsV1StatefulSetOrdinals, IoK8sApiAppsV1StatefulSetOrdinalsBuilder> {
  /// start is the number representing the first replica's index. It may be used to number replicas from an alternate index (eg: 1-indexed) over the default 0-indexed names, or to orchestrate progressive movement of replicas from one StatefulSet to another. If set, replica indices will be in the range:   [.spec.ordinals.start, .spec.ordinals.start + .spec.replicas). If unset, defaults to 0. Replica indices will be in the range:   [0, .spec.replicas).
  @BuiltValueField(wireName: r'start')
  int? get start;

  IoK8sApiAppsV1StatefulSetOrdinals._();

  factory IoK8sApiAppsV1StatefulSetOrdinals([void updates(IoK8sApiAppsV1StatefulSetOrdinalsBuilder b)]) = _$IoK8sApiAppsV1StatefulSetOrdinals;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1StatefulSetOrdinalsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1StatefulSetOrdinals> get serializer => _$IoK8sApiAppsV1StatefulSetOrdinalsSerializer();
}

class _$IoK8sApiAppsV1StatefulSetOrdinalsSerializer implements PrimitiveSerializer<IoK8sApiAppsV1StatefulSetOrdinals> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1StatefulSetOrdinals, _$IoK8sApiAppsV1StatefulSetOrdinals];

  @override
  final String wireName = r'IoK8sApiAppsV1StatefulSetOrdinals';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1StatefulSetOrdinals object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.start != null) {
      yield r'start';
      yield serializers.serialize(
        object.start,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAppsV1StatefulSetOrdinals object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1StatefulSetOrdinalsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.start = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAppsV1StatefulSetOrdinals deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1StatefulSetOrdinalsBuilder();
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

