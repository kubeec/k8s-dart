//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector_requirement.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.g.dart';

/// A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
///
/// Properties:
/// * [matchExpressions] - matchExpressions is a list of label selector requirements. The requirements are ANDed.
/// * [matchLabels] - matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1LabelSelector implements Built<IoK8sApimachineryPkgApisMetaV1LabelSelector, IoK8sApimachineryPkgApisMetaV1LabelSelectorBuilder> {
  /// matchExpressions is a list of label selector requirements. The requirements are ANDed.
  @BuiltValueField(wireName: r'matchExpressions')
  BuiltList<IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement>? get matchExpressions;

  /// matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.
  @BuiltValueField(wireName: r'matchLabels')
  BuiltMap<String, String>? get matchLabels;

  IoK8sApimachineryPkgApisMetaV1LabelSelector._();

  factory IoK8sApimachineryPkgApisMetaV1LabelSelector([void updates(IoK8sApimachineryPkgApisMetaV1LabelSelectorBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1LabelSelector;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1LabelSelectorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1LabelSelector> get serializer => _$IoK8sApimachineryPkgApisMetaV1LabelSelectorSerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1LabelSelectorSerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1LabelSelector> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1LabelSelector, _$IoK8sApimachineryPkgApisMetaV1LabelSelector];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1LabelSelector';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1LabelSelector object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.matchExpressions != null) {
      yield r'matchExpressions';
      yield serializers.serialize(
        object.matchExpressions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement)]),
      );
    }
    if (object.matchLabels != null) {
      yield r'matchLabels';
      yield serializers.serialize(
        object.matchLabels,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1LabelSelector object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1LabelSelectorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'matchExpressions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement)]),
          ) as BuiltList<IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement>;
          result.matchExpressions.replace(valueDes);
          break;
        case r'matchLabels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.matchLabels.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApimachineryPkgApisMetaV1LabelSelector deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1LabelSelectorBuilder();
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

