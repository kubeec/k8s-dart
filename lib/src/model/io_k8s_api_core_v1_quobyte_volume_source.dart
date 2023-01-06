//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_quobyte_volume_source.g.dart';

/// Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
///
/// Properties:
/// * [group] - group to map volume access to Default is no group
/// * [readOnly] - readOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
/// * [registry] - registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
/// * [tenant] - tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin
/// * [user] - user to map volume access to Defaults to serivceaccount user
/// * [volume] - volume is a string that references an already created Quobyte volume by name.
@BuiltValue()
abstract class IoK8sApiCoreV1QuobyteVolumeSource implements Built<IoK8sApiCoreV1QuobyteVolumeSource, IoK8sApiCoreV1QuobyteVolumeSourceBuilder> {
  /// group to map volume access to Default is no group
  @BuiltValueField(wireName: r'group')
  String? get group;

  /// readOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  /// registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
  @BuiltValueField(wireName: r'registry')
  String get registry;

  /// tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin
  @BuiltValueField(wireName: r'tenant')
  String? get tenant;

  /// user to map volume access to Defaults to serivceaccount user
  @BuiltValueField(wireName: r'user')
  String? get user;

  /// volume is a string that references an already created Quobyte volume by name.
  @BuiltValueField(wireName: r'volume')
  String get volume;

  IoK8sApiCoreV1QuobyteVolumeSource._();

  factory IoK8sApiCoreV1QuobyteVolumeSource([void updates(IoK8sApiCoreV1QuobyteVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1QuobyteVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1QuobyteVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1QuobyteVolumeSource> get serializer => _$IoK8sApiCoreV1QuobyteVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1QuobyteVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1QuobyteVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1QuobyteVolumeSource, _$IoK8sApiCoreV1QuobyteVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1QuobyteVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1QuobyteVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType(String),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    yield r'registry';
    yield serializers.serialize(
      object.registry,
      specifiedType: const FullType(String),
    );
    if (object.tenant != null) {
      yield r'tenant';
      yield serializers.serialize(
        object.tenant,
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
    yield r'volume';
    yield serializers.serialize(
      object.volume,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1QuobyteVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1QuobyteVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.group = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        case r'registry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.registry = valueDes;
          break;
        case r'tenant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tenant = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.user = valueDes;
          break;
        case r'volume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.volume = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1QuobyteVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1QuobyteVolumeSourceBuilder();
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

