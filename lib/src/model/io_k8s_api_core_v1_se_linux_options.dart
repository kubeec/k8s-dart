//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_se_linux_options.g.dart';

/// SELinuxOptions are the labels to be applied to the container
///
/// Properties:
/// * [level] - Level is SELinux level label that applies to the container.
/// * [role] - Role is a SELinux role label that applies to the container.
/// * [type] - Type is a SELinux type label that applies to the container.
/// * [user] - User is a SELinux user label that applies to the container.
@BuiltValue()
abstract class IoK8sApiCoreV1SELinuxOptions implements Built<IoK8sApiCoreV1SELinuxOptions, IoK8sApiCoreV1SELinuxOptionsBuilder> {
  /// Level is SELinux level label that applies to the container.
  @BuiltValueField(wireName: r'level')
  String? get level;

  /// Role is a SELinux role label that applies to the container.
  @BuiltValueField(wireName: r'role')
  String? get role;

  /// Type is a SELinux type label that applies to the container.
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// User is a SELinux user label that applies to the container.
  @BuiltValueField(wireName: r'user')
  String? get user;

  IoK8sApiCoreV1SELinuxOptions._();

  factory IoK8sApiCoreV1SELinuxOptions([void updates(IoK8sApiCoreV1SELinuxOptionsBuilder b)]) = _$IoK8sApiCoreV1SELinuxOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1SELinuxOptionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1SELinuxOptions> get serializer => _$IoK8sApiCoreV1SELinuxOptionsSerializer();
}

class _$IoK8sApiCoreV1SELinuxOptionsSerializer implements PrimitiveSerializer<IoK8sApiCoreV1SELinuxOptions> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1SELinuxOptions, _$IoK8sApiCoreV1SELinuxOptions];

  @override
  final String wireName = r'IoK8sApiCoreV1SELinuxOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1SELinuxOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.level != null) {
      yield r'level';
      yield serializers.serialize(
        object.level,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
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
    IoK8sApiCoreV1SELinuxOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1SELinuxOptionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.level = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.role = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
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
  IoK8sApiCoreV1SELinuxOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1SELinuxOptionsBuilder();
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

