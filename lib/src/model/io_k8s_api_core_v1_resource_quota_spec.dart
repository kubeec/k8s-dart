//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_scope_selector.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_resource_quota_spec.g.dart';

/// ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
///
/// Properties:
/// * [hard] - hard is the set of desired hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
/// * [scopeSelector] 
/// * [scopes] - A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
@BuiltValue()
abstract class IoK8sApiCoreV1ResourceQuotaSpec implements Built<IoK8sApiCoreV1ResourceQuotaSpec, IoK8sApiCoreV1ResourceQuotaSpecBuilder> {
  /// hard is the set of desired hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
  @BuiltValueField(wireName: r'hard')
  BuiltMap<String, String>? get hard;

  @BuiltValueField(wireName: r'scopeSelector')
  IoK8sApiCoreV1ScopeSelector? get scopeSelector;

  /// A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
  @BuiltValueField(wireName: r'scopes')
  BuiltList<String>? get scopes;

  IoK8sApiCoreV1ResourceQuotaSpec._();

  factory IoK8sApiCoreV1ResourceQuotaSpec([void updates(IoK8sApiCoreV1ResourceQuotaSpecBuilder b)]) = _$IoK8sApiCoreV1ResourceQuotaSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ResourceQuotaSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ResourceQuotaSpec> get serializer => _$IoK8sApiCoreV1ResourceQuotaSpecSerializer();
}

class _$IoK8sApiCoreV1ResourceQuotaSpecSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ResourceQuotaSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ResourceQuotaSpec, _$IoK8sApiCoreV1ResourceQuotaSpec];

  @override
  final String wireName = r'IoK8sApiCoreV1ResourceQuotaSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ResourceQuotaSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hard != null) {
      yield r'hard';
      yield serializers.serialize(
        object.hard,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.scopeSelector != null) {
      yield r'scopeSelector';
      yield serializers.serialize(
        object.scopeSelector,
        specifiedType: const FullType(IoK8sApiCoreV1ScopeSelector),
      );
    }
    if (object.scopes != null) {
      yield r'scopes';
      yield serializers.serialize(
        object.scopes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ResourceQuotaSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ResourceQuotaSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.hard.replace(valueDes);
          break;
        case r'scopeSelector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ScopeSelector),
          ) as IoK8sApiCoreV1ScopeSelector;
          result.scopeSelector.replace(valueDes);
          break;
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.scopes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ResourceQuotaSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ResourceQuotaSpecBuilder();
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

