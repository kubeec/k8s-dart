//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_label_selector_requirement.g.dart';

/// A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
///
/// Properties:
/// * [key] - key is the label key that the selector applies to.
/// * [operator_] - operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
/// * [values] - values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement implements Built<IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement, IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirementBuilder> {
  /// key is the label key that the selector applies to.
  @BuiltValueField(wireName: r'key')
  String get key;

  /// operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
  @BuiltValueField(wireName: r'operator')
  String get operator_;

  /// values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  @BuiltValueField(wireName: r'values')
  BuiltList<String>? get values;

  IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement._();

  factory IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement([void updates(IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirementBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirementBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement> get serializer => _$IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirementSerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirementSerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement, _$IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'operator';
    yield serializers.serialize(
      object.operator_,
      specifiedType: const FullType(String),
    );
    if (object.values != null) {
      yield r'values';
      yield serializers.serialize(
        object.values,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirementBuilder result,
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
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operator_ = valueDes;
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
  IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirementBuilder();
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

