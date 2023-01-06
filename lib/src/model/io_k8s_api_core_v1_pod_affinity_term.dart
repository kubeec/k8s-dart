//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_pod_affinity_term.g.dart';

/// Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> matches that of any node on which a pod of the set of pods is running
///
/// Properties:
/// * [labelSelector] 
/// * [namespaceSelector] 
/// * [namespaces] - namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".
/// * [topologyKey] - This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
@BuiltValue()
abstract class IoK8sApiCoreV1PodAffinityTerm implements Built<IoK8sApiCoreV1PodAffinityTerm, IoK8sApiCoreV1PodAffinityTermBuilder> {
  @BuiltValueField(wireName: r'labelSelector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector? get labelSelector;

  @BuiltValueField(wireName: r'namespaceSelector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector? get namespaceSelector;

  /// namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".
  @BuiltValueField(wireName: r'namespaces')
  BuiltList<String>? get namespaces;

  /// This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
  @BuiltValueField(wireName: r'topologyKey')
  String get topologyKey;

  IoK8sApiCoreV1PodAffinityTerm._();

  factory IoK8sApiCoreV1PodAffinityTerm([void updates(IoK8sApiCoreV1PodAffinityTermBuilder b)]) = _$IoK8sApiCoreV1PodAffinityTerm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PodAffinityTermBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PodAffinityTerm> get serializer => _$IoK8sApiCoreV1PodAffinityTermSerializer();
}

class _$IoK8sApiCoreV1PodAffinityTermSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PodAffinityTerm> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PodAffinityTerm, _$IoK8sApiCoreV1PodAffinityTerm];

  @override
  final String wireName = r'IoK8sApiCoreV1PodAffinityTerm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PodAffinityTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.labelSelector != null) {
      yield r'labelSelector';
      yield serializers.serialize(
        object.labelSelector,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
      );
    }
    if (object.namespaceSelector != null) {
      yield r'namespaceSelector';
      yield serializers.serialize(
        object.namespaceSelector,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
      );
    }
    if (object.namespaces != null) {
      yield r'namespaces';
      yield serializers.serialize(
        object.namespaces,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'topologyKey';
    yield serializers.serialize(
      object.topologyKey,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PodAffinityTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PodAffinityTermBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'labelSelector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
          result.labelSelector.replace(valueDes);
          break;
        case r'namespaceSelector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
          result.namespaceSelector.replace(valueDes);
          break;
        case r'namespaces':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.namespaces.replace(valueDes);
          break;
        case r'topologyKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.topologyKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PodAffinityTerm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PodAffinityTermBuilder();
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

