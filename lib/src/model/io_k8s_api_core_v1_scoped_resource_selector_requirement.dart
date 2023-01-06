//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_scoped_resource_selector_requirement.g.dart';

/// A scoped-resource selector requirement is a selector that contains values, a scope name, and an operator that relates the scope name and values.
///
/// Properties:
/// * [operator_] - Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.  
/// * [scopeName] - The name of the scope that the selector applies to.  
/// * [values] - An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
@BuiltValue()
abstract class IoK8sApiCoreV1ScopedResourceSelectorRequirement implements Built<IoK8sApiCoreV1ScopedResourceSelectorRequirement, IoK8sApiCoreV1ScopedResourceSelectorRequirementBuilder> {
  /// Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.  
  @BuiltValueField(wireName: r'operator')
  String get operator_;

  /// The name of the scope that the selector applies to.  
  @BuiltValueField(wireName: r'scopeName')
  String get scopeName;

  /// An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  @BuiltValueField(wireName: r'values')
  BuiltList<String>? get values;

  IoK8sApiCoreV1ScopedResourceSelectorRequirement._();

  factory IoK8sApiCoreV1ScopedResourceSelectorRequirement([void updates(IoK8sApiCoreV1ScopedResourceSelectorRequirementBuilder b)]) = _$IoK8sApiCoreV1ScopedResourceSelectorRequirement;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ScopedResourceSelectorRequirementBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ScopedResourceSelectorRequirement> get serializer => _$IoK8sApiCoreV1ScopedResourceSelectorRequirementSerializer();
}

class _$IoK8sApiCoreV1ScopedResourceSelectorRequirementSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ScopedResourceSelectorRequirement> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ScopedResourceSelectorRequirement, _$IoK8sApiCoreV1ScopedResourceSelectorRequirement];

  @override
  final String wireName = r'IoK8sApiCoreV1ScopedResourceSelectorRequirement';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ScopedResourceSelectorRequirement object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operator';
    yield serializers.serialize(
      object.operator_,
      specifiedType: const FullType(String),
    );
    yield r'scopeName';
    yield serializers.serialize(
      object.scopeName,
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
    IoK8sApiCoreV1ScopedResourceSelectorRequirement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ScopedResourceSelectorRequirementBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operator_ = valueDes;
          break;
        case r'scopeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scopeName = valueDes;
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
  IoK8sApiCoreV1ScopedResourceSelectorRequirement deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ScopedResourceSelectorRequirementBuilder();
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

