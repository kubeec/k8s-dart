//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_host_alias.g.dart';

/// HostAlias holds the mapping between IP and hostnames that will be injected as an entry in the pod's hosts file.
///
/// Properties:
/// * [hostnames] - Hostnames for the above IP address.
/// * [ip] - IP address of the host file entry.
@BuiltValue()
abstract class IoK8sApiCoreV1HostAlias implements Built<IoK8sApiCoreV1HostAlias, IoK8sApiCoreV1HostAliasBuilder> {
  /// Hostnames for the above IP address.
  @BuiltValueField(wireName: r'hostnames')
  BuiltList<String>? get hostnames;

  /// IP address of the host file entry.
  @BuiltValueField(wireName: r'ip')
  String? get ip;

  IoK8sApiCoreV1HostAlias._();

  factory IoK8sApiCoreV1HostAlias([void updates(IoK8sApiCoreV1HostAliasBuilder b)]) = _$IoK8sApiCoreV1HostAlias;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1HostAliasBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1HostAlias> get serializer => _$IoK8sApiCoreV1HostAliasSerializer();
}

class _$IoK8sApiCoreV1HostAliasSerializer implements PrimitiveSerializer<IoK8sApiCoreV1HostAlias> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1HostAlias, _$IoK8sApiCoreV1HostAlias];

  @override
  final String wireName = r'IoK8sApiCoreV1HostAlias';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1HostAlias object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hostnames != null) {
      yield r'hostnames';
      yield serializers.serialize(
        object.hostnames,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.ip != null) {
      yield r'ip';
      yield serializers.serialize(
        object.ip,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1HostAlias object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1HostAliasBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hostnames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.hostnames.replace(valueDes);
          break;
        case r'ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ip = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1HostAlias deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1HostAliasBuilder();
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

