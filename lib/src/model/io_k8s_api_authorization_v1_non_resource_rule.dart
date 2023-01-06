//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authorization_v1_non_resource_rule.g.dart';

/// NonResourceRule holds information that describes a rule for the non-resource
///
/// Properties:
/// * [nonResourceURLs] - NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  \"*\" means all.
/// * [verbs] - Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  \"*\" means all.
@BuiltValue()
abstract class IoK8sApiAuthorizationV1NonResourceRule implements Built<IoK8sApiAuthorizationV1NonResourceRule, IoK8sApiAuthorizationV1NonResourceRuleBuilder> {
  /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  \"*\" means all.
  @BuiltValueField(wireName: r'nonResourceURLs')
  BuiltList<String>? get nonResourceURLs;

  /// Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  \"*\" means all.
  @BuiltValueField(wireName: r'verbs')
  BuiltList<String> get verbs;

  IoK8sApiAuthorizationV1NonResourceRule._();

  factory IoK8sApiAuthorizationV1NonResourceRule([void updates(IoK8sApiAuthorizationV1NonResourceRuleBuilder b)]) = _$IoK8sApiAuthorizationV1NonResourceRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthorizationV1NonResourceRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthorizationV1NonResourceRule> get serializer => _$IoK8sApiAuthorizationV1NonResourceRuleSerializer();
}

class _$IoK8sApiAuthorizationV1NonResourceRuleSerializer implements PrimitiveSerializer<IoK8sApiAuthorizationV1NonResourceRule> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthorizationV1NonResourceRule, _$IoK8sApiAuthorizationV1NonResourceRule];

  @override
  final String wireName = r'IoK8sApiAuthorizationV1NonResourceRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthorizationV1NonResourceRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nonResourceURLs != null) {
      yield r'nonResourceURLs';
      yield serializers.serialize(
        object.nonResourceURLs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'verbs';
    yield serializers.serialize(
      object.verbs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthorizationV1NonResourceRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthorizationV1NonResourceRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nonResourceURLs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.nonResourceURLs.replace(valueDes);
          break;
        case r'verbs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.verbs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthorizationV1NonResourceRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthorizationV1NonResourceRuleBuilder();
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

