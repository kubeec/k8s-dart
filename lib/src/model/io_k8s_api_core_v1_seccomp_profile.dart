//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_seccomp_profile.g.dart';

/// SeccompProfile defines a pod/container's seccomp profile settings. Only one profile source may be set.
///
/// Properties:
/// * [localhostProfile] - localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is \"Localhost\".
/// * [type] - type indicates which kind of seccomp profile will be applied. Valid options are:  Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.  
@BuiltValue()
abstract class IoK8sApiCoreV1SeccompProfile implements Built<IoK8sApiCoreV1SeccompProfile, IoK8sApiCoreV1SeccompProfileBuilder> {
  /// localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is \"Localhost\".
  @BuiltValueField(wireName: r'localhostProfile')
  String? get localhostProfile;

  /// type indicates which kind of seccomp profile will be applied. Valid options are:  Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.  
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiCoreV1SeccompProfile._();

  factory IoK8sApiCoreV1SeccompProfile([void updates(IoK8sApiCoreV1SeccompProfileBuilder b)]) = _$IoK8sApiCoreV1SeccompProfile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1SeccompProfileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1SeccompProfile> get serializer => _$IoK8sApiCoreV1SeccompProfileSerializer();
}

class _$IoK8sApiCoreV1SeccompProfileSerializer implements PrimitiveSerializer<IoK8sApiCoreV1SeccompProfile> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1SeccompProfile, _$IoK8sApiCoreV1SeccompProfile];

  @override
  final String wireName = r'IoK8sApiCoreV1SeccompProfile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1SeccompProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.localhostProfile != null) {
      yield r'localhostProfile';
      yield serializers.serialize(
        object.localhostProfile,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1SeccompProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1SeccompProfileBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'localhostProfile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.localhostProfile = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1SeccompProfile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1SeccompProfileBuilder();
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

