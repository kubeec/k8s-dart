//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_selector_term.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_node_selector.g.dart';

/// A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
///
/// Properties:
/// * [nodeSelectorTerms] - Required. A list of node selector terms. The terms are ORed.
@BuiltValue()
abstract class IoK8sApiCoreV1NodeSelector implements Built<IoK8sApiCoreV1NodeSelector, IoK8sApiCoreV1NodeSelectorBuilder> {
  /// Required. A list of node selector terms. The terms are ORed.
  @BuiltValueField(wireName: r'nodeSelectorTerms')
  BuiltList<IoK8sApiCoreV1NodeSelectorTerm> get nodeSelectorTerms;

  IoK8sApiCoreV1NodeSelector._();

  factory IoK8sApiCoreV1NodeSelector([void updates(IoK8sApiCoreV1NodeSelectorBuilder b)]) = _$IoK8sApiCoreV1NodeSelector;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1NodeSelectorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1NodeSelector> get serializer => _$IoK8sApiCoreV1NodeSelectorSerializer();
}

class _$IoK8sApiCoreV1NodeSelectorSerializer implements PrimitiveSerializer<IoK8sApiCoreV1NodeSelector> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1NodeSelector, _$IoK8sApiCoreV1NodeSelector];

  @override
  final String wireName = r'IoK8sApiCoreV1NodeSelector';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1NodeSelector object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'nodeSelectorTerms';
    yield serializers.serialize(
      object.nodeSelectorTerms,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1NodeSelectorTerm)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1NodeSelector object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1NodeSelectorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nodeSelectorTerms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1NodeSelectorTerm)]),
          ) as BuiltList<IoK8sApiCoreV1NodeSelectorTerm>;
          result.nodeSelectorTerms.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1NodeSelector deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1NodeSelectorBuilder();
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

