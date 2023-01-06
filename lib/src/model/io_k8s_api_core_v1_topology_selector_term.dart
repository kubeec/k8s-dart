//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_topology_selector_label_requirement.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_topology_selector_term.g.dart';

/// A topology selector term represents the result of label queries. A null or empty topology selector term matches no objects. The requirements of them are ANDed. It provides a subset of functionality as NodeSelectorTerm. This is an alpha feature and may change in the future.
///
/// Properties:
/// * [matchLabelExpressions] - A list of topology selector requirements by labels.
@BuiltValue()
abstract class IoK8sApiCoreV1TopologySelectorTerm implements Built<IoK8sApiCoreV1TopologySelectorTerm, IoK8sApiCoreV1TopologySelectorTermBuilder> {
  /// A list of topology selector requirements by labels.
  @BuiltValueField(wireName: r'matchLabelExpressions')
  BuiltList<IoK8sApiCoreV1TopologySelectorLabelRequirement>? get matchLabelExpressions;

  IoK8sApiCoreV1TopologySelectorTerm._();

  factory IoK8sApiCoreV1TopologySelectorTerm([void updates(IoK8sApiCoreV1TopologySelectorTermBuilder b)]) = _$IoK8sApiCoreV1TopologySelectorTerm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1TopologySelectorTermBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1TopologySelectorTerm> get serializer => _$IoK8sApiCoreV1TopologySelectorTermSerializer();
}

class _$IoK8sApiCoreV1TopologySelectorTermSerializer implements PrimitiveSerializer<IoK8sApiCoreV1TopologySelectorTerm> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1TopologySelectorTerm, _$IoK8sApiCoreV1TopologySelectorTerm];

  @override
  final String wireName = r'IoK8sApiCoreV1TopologySelectorTerm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1TopologySelectorTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.matchLabelExpressions != null) {
      yield r'matchLabelExpressions';
      yield serializers.serialize(
        object.matchLabelExpressions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1TopologySelectorLabelRequirement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1TopologySelectorTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1TopologySelectorTermBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'matchLabelExpressions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1TopologySelectorLabelRequirement)]),
          ) as BuiltList<IoK8sApiCoreV1TopologySelectorLabelRequirement>;
          result.matchLabelExpressions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1TopologySelectorTerm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1TopologySelectorTermBuilder();
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

