//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_scoped_resource_selector_requirement.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_scope_selector.g.dart';

/// A scope selector represents the AND of the selectors represented by the scoped-resource selector requirements.
///
/// Properties:
/// * [matchExpressions] - A list of scope selector requirements by scope of the resources.
@BuiltValue()
abstract class IoK8sApiCoreV1ScopeSelector implements Built<IoK8sApiCoreV1ScopeSelector, IoK8sApiCoreV1ScopeSelectorBuilder> {
  /// A list of scope selector requirements by scope of the resources.
  @BuiltValueField(wireName: r'matchExpressions')
  BuiltList<IoK8sApiCoreV1ScopedResourceSelectorRequirement>? get matchExpressions;

  IoK8sApiCoreV1ScopeSelector._();

  factory IoK8sApiCoreV1ScopeSelector([void updates(IoK8sApiCoreV1ScopeSelectorBuilder b)]) = _$IoK8sApiCoreV1ScopeSelector;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ScopeSelectorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ScopeSelector> get serializer => _$IoK8sApiCoreV1ScopeSelectorSerializer();
}

class _$IoK8sApiCoreV1ScopeSelectorSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ScopeSelector> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ScopeSelector, _$IoK8sApiCoreV1ScopeSelector];

  @override
  final String wireName = r'IoK8sApiCoreV1ScopeSelector';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ScopeSelector object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.matchExpressions != null) {
      yield r'matchExpressions';
      yield serializers.serialize(
        object.matchExpressions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ScopedResourceSelectorRequirement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ScopeSelector object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ScopeSelectorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'matchExpressions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ScopedResourceSelectorRequirement)]),
          ) as BuiltList<IoK8sApiCoreV1ScopedResourceSelectorRequirement>;
          result.matchExpressions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ScopeSelector deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ScopeSelectorBuilder();
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

