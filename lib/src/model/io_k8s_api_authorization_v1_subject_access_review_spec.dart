//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_authorization_v1_non_resource_attributes.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_resource_attributes.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authorization_v1_subject_access_review_spec.g.dart';

/// SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
///
/// Properties:
/// * [extra] - Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
/// * [groups] - Groups is the groups you're testing for.
/// * [nonResourceAttributes] 
/// * [resourceAttributes] 
/// * [uid] - UID information about the requesting user.
/// * [user] - User is the user you're testing for. If you specify \"User\" but not \"Groups\", then is it interpreted as \"What if User were not a member of any groups
@BuiltValue()
abstract class IoK8sApiAuthorizationV1SubjectAccessReviewSpec implements Built<IoK8sApiAuthorizationV1SubjectAccessReviewSpec, IoK8sApiAuthorizationV1SubjectAccessReviewSpecBuilder> {
  /// Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
  @BuiltValueField(wireName: r'extra')
  BuiltMap<String, BuiltList<String>>? get extra;

  /// Groups is the groups you're testing for.
  @BuiltValueField(wireName: r'groups')
  BuiltList<String>? get groups;

  @BuiltValueField(wireName: r'nonResourceAttributes')
  IoK8sApiAuthorizationV1NonResourceAttributes? get nonResourceAttributes;

  @BuiltValueField(wireName: r'resourceAttributes')
  IoK8sApiAuthorizationV1ResourceAttributes? get resourceAttributes;

  /// UID information about the requesting user.
  @BuiltValueField(wireName: r'uid')
  String? get uid;

  /// User is the user you're testing for. If you specify \"User\" but not \"Groups\", then is it interpreted as \"What if User were not a member of any groups
  @BuiltValueField(wireName: r'user')
  String? get user;

  IoK8sApiAuthorizationV1SubjectAccessReviewSpec._();

  factory IoK8sApiAuthorizationV1SubjectAccessReviewSpec([void updates(IoK8sApiAuthorizationV1SubjectAccessReviewSpecBuilder b)]) = _$IoK8sApiAuthorizationV1SubjectAccessReviewSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthorizationV1SubjectAccessReviewSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthorizationV1SubjectAccessReviewSpec> get serializer => _$IoK8sApiAuthorizationV1SubjectAccessReviewSpecSerializer();
}

class _$IoK8sApiAuthorizationV1SubjectAccessReviewSpecSerializer implements PrimitiveSerializer<IoK8sApiAuthorizationV1SubjectAccessReviewSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthorizationV1SubjectAccessReviewSpec, _$IoK8sApiAuthorizationV1SubjectAccessReviewSpec];

  @override
  final String wireName = r'IoK8sApiAuthorizationV1SubjectAccessReviewSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthorizationV1SubjectAccessReviewSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.extra != null) {
      yield r'extra';
      yield serializers.serialize(
        object.extra,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])]),
      );
    }
    if (object.groups != null) {
      yield r'groups';
      yield serializers.serialize(
        object.groups,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.nonResourceAttributes != null) {
      yield r'nonResourceAttributes';
      yield serializers.serialize(
        object.nonResourceAttributes,
        specifiedType: const FullType(IoK8sApiAuthorizationV1NonResourceAttributes),
      );
    }
    if (object.resourceAttributes != null) {
      yield r'resourceAttributes';
      yield serializers.serialize(
        object.resourceAttributes,
        specifiedType: const FullType(IoK8sApiAuthorizationV1ResourceAttributes),
      );
    }
    if (object.uid != null) {
      yield r'uid';
      yield serializers.serialize(
        object.uid,
        specifiedType: const FullType(String),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthorizationV1SubjectAccessReviewSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthorizationV1SubjectAccessReviewSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'extra':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])]),
          ) as BuiltMap<String, BuiltList<String>>;
          result.extra.replace(valueDes);
          break;
        case r'groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.groups.replace(valueDes);
          break;
        case r'nonResourceAttributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAuthorizationV1NonResourceAttributes),
          ) as IoK8sApiAuthorizationV1NonResourceAttributes;
          result.nonResourceAttributes.replace(valueDes);
          break;
        case r'resourceAttributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAuthorizationV1ResourceAttributes),
          ) as IoK8sApiAuthorizationV1ResourceAttributes;
          result.resourceAttributes.replace(valueDes);
          break;
        case r'uid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uid = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.user = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthorizationV1SubjectAccessReviewSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthorizationV1SubjectAccessReviewSpecBuilder();
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

