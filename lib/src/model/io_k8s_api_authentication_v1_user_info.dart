//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authentication_v1_user_info.g.dart';

/// UserInfo holds the information about the user needed to implement the user.Info interface.
///
/// Properties:
/// * [extra] - Any additional information provided by the authenticator.
/// * [groups] - The names of groups this user is a part of.
/// * [uid] - A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
/// * [username] - The name that uniquely identifies this user among all active users.
@BuiltValue()
abstract class IoK8sApiAuthenticationV1UserInfo implements Built<IoK8sApiAuthenticationV1UserInfo, IoK8sApiAuthenticationV1UserInfoBuilder> {
  /// Any additional information provided by the authenticator.
  @BuiltValueField(wireName: r'extra')
  BuiltMap<String, BuiltList<String>>? get extra;

  /// The names of groups this user is a part of.
  @BuiltValueField(wireName: r'groups')
  BuiltList<String>? get groups;

  /// A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
  @BuiltValueField(wireName: r'uid')
  String? get uid;

  /// The name that uniquely identifies this user among all active users.
  @BuiltValueField(wireName: r'username')
  String? get username;

  IoK8sApiAuthenticationV1UserInfo._();

  factory IoK8sApiAuthenticationV1UserInfo([void updates(IoK8sApiAuthenticationV1UserInfoBuilder b)]) = _$IoK8sApiAuthenticationV1UserInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthenticationV1UserInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthenticationV1UserInfo> get serializer => _$IoK8sApiAuthenticationV1UserInfoSerializer();
}

class _$IoK8sApiAuthenticationV1UserInfoSerializer implements PrimitiveSerializer<IoK8sApiAuthenticationV1UserInfo> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthenticationV1UserInfo, _$IoK8sApiAuthenticationV1UserInfo];

  @override
  final String wireName = r'IoK8sApiAuthenticationV1UserInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthenticationV1UserInfo object, {
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
    if (object.uid != null) {
      yield r'uid';
      yield serializers.serialize(
        object.uid,
        specifiedType: const FullType(String),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthenticationV1UserInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthenticationV1UserInfoBuilder result,
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
        case r'uid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uid = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthenticationV1UserInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthenticationV1UserInfoBuilder();
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

