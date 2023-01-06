//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_topology_selector_label_requirement.g.dart';

/// A topology selector requirement is a selector that matches given label. This is an alpha feature and may change in the future.
///
/// Properties:
/// * [key] - The label key that the selector applies to.
/// * [values] - An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
@BuiltValue()
abstract class IoK8sApiCoreV1TopologySelectorLabelRequirement implements Built<IoK8sApiCoreV1TopologySelectorLabelRequirement, IoK8sApiCoreV1TopologySelectorLabelRequirementBuilder> {
  /// The label key that the selector applies to.
  @BuiltValueField(wireName: r'key')
  String get key;

  /// An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
  @BuiltValueField(wireName: r'values')
  BuiltList<String> get values;

  IoK8sApiCoreV1TopologySelectorLabelRequirement._();

  factory IoK8sApiCoreV1TopologySelectorLabelRequirement([void updates(IoK8sApiCoreV1TopologySelectorLabelRequirementBuilder b)]) = _$IoK8sApiCoreV1TopologySelectorLabelRequirement;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1TopologySelectorLabelRequirementBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1TopologySelectorLabelRequirement> get serializer => _$IoK8sApiCoreV1TopologySelectorLabelRequirementSerializer();
}

class _$IoK8sApiCoreV1TopologySelectorLabelRequirementSerializer implements PrimitiveSerializer<IoK8sApiCoreV1TopologySelectorLabelRequirement> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1TopologySelectorLabelRequirement, _$IoK8sApiCoreV1TopologySelectorLabelRequirement];

  @override
  final String wireName = r'IoK8sApiCoreV1TopologySelectorLabelRequirement';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1TopologySelectorLabelRequirement object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'values';
    yield serializers.serialize(
      object.values,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1TopologySelectorLabelRequirement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1TopologySelectorLabelRequirementBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'values':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.values.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1TopologySelectorLabelRequirement deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1TopologySelectorLabelRequirementBuilder();
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

