//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_node_selector_term.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_preferred_scheduling_term.g.dart';

/// An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).
///
/// Properties:
/// * [preference] 
/// * [weight] - Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
@BuiltValue()
abstract class IoK8sApiCoreV1PreferredSchedulingTerm implements Built<IoK8sApiCoreV1PreferredSchedulingTerm, IoK8sApiCoreV1PreferredSchedulingTermBuilder> {
  @BuiltValueField(wireName: r'preference')
  IoK8sApiCoreV1NodeSelectorTerm get preference;

  /// Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
  @BuiltValueField(wireName: r'weight')
  int get weight;

  IoK8sApiCoreV1PreferredSchedulingTerm._();

  factory IoK8sApiCoreV1PreferredSchedulingTerm([void updates(IoK8sApiCoreV1PreferredSchedulingTermBuilder b)]) = _$IoK8sApiCoreV1PreferredSchedulingTerm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PreferredSchedulingTermBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PreferredSchedulingTerm> get serializer => _$IoK8sApiCoreV1PreferredSchedulingTermSerializer();
}

class _$IoK8sApiCoreV1PreferredSchedulingTermSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PreferredSchedulingTerm> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PreferredSchedulingTerm, _$IoK8sApiCoreV1PreferredSchedulingTerm];

  @override
  final String wireName = r'IoK8sApiCoreV1PreferredSchedulingTerm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PreferredSchedulingTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'preference';
    yield serializers.serialize(
      object.preference,
      specifiedType: const FullType(IoK8sApiCoreV1NodeSelectorTerm),
    );
    yield r'weight';
    yield serializers.serialize(
      object.weight,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PreferredSchedulingTerm object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PreferredSchedulingTermBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'preference':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeSelectorTerm),
          ) as IoK8sApiCoreV1NodeSelectorTerm;
          result.preference.replace(valueDes);
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.weight = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PreferredSchedulingTerm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PreferredSchedulingTermBuilder();
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

