//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_selector_requirement.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_node_selector_term.g.dart';

/// A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
///
/// Properties:
/// * [matchExpressions] - A list of node selector requirements by node's labels.
/// * [matchFields] - A list of node selector requirements by node's fields.
@BuiltValue()
abstract class IoK8sApiCoreV1NodeSelectorTerm implements Built<IoK8sApiCoreV1NodeSelectorTerm, IoK8sApiCoreV1NodeSelectorTermBuilder> {
  /// A list of node selector requirements by node's labels.
  @BuiltValueField(wireName: r'matchExpressions')
  BuiltList<IoK8sApiCoreV1NodeSelectorRequirement>? get matchExpressions;

  /// A list of node selector requirements by node's fields.
  @BuiltValueField(wireName: r'matchFields')
  BuiltList<IoK8sApiCoreV1NodeSelectorRequirement>? get matchFields;

  IoK8sApiCoreV1NodeSelectorTerm._();

  factory IoK8sApiCoreV1NodeSelectorTerm([void updates(IoK8sApiCoreV1NodeSelectorTermBuilder b)]) = _$IoK8sApiCoreV1NodeSelectorTerm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1NodeSelectorTermBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1NodeSelectorTerm> get serializer => _$IoK8sApiCoreV1NodeSelectorTermSerializer();
}

class _$IoK8sApiCoreV1NodeSelectorTermSerializer implements PrimitiveSerializer<IoK8sApiCoreV1NodeSelectorTerm> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1NodeSelectorTerm, _$IoK8sApiCoreV1NodeSelectorTerm];

  @override
  final String wireName = r'IoK8sApiCoreV1NodeSelectorTerm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1NodeSelectorTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.matchExpressions != null) {
      yield r'matchExpressions';
      yield serializers.serialize(
        object.matchExpressions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1NodeSelectorRequirement)]),
      );
    }
    if (object.matchFields != null) {
      yield r'matchFields';
      yield serializers.serialize(
        object.matchFields,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1NodeSelectorRequirement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1NodeSelectorTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1NodeSelectorTermBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'matchExpressions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1NodeSelectorRequirement)]),
          ) as BuiltList<IoK8sApiCoreV1NodeSelectorRequirement>;
          result.matchExpressions.replace(valueDes);
          break;
        case r'matchFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1NodeSelectorRequirement)]),
          ) as BuiltList<IoK8sApiCoreV1NodeSelectorRequirement>;
          result.matchFields.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1NodeSelectorTerm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1NodeSelectorTermBuilder();
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

