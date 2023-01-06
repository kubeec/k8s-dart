//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_downward_api_projection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_secret_projection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_service_account_token_projection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_config_map_projection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_volume_projection.g.dart';

/// Projection that may be projected along with other supported volume types
///
/// Properties:
/// * [configMap] 
/// * [downwardAPI] 
/// * [secret] 
/// * [serviceAccountToken] 
@BuiltValue()
abstract class IoK8sApiCoreV1VolumeProjection implements Built<IoK8sApiCoreV1VolumeProjection, IoK8sApiCoreV1VolumeProjectionBuilder> {
  @BuiltValueField(wireName: r'configMap')
  IoK8sApiCoreV1ConfigMapProjection? get configMap;

  @BuiltValueField(wireName: r'downwardAPI')
  IoK8sApiCoreV1DownwardAPIProjection? get downwardAPI;

  @BuiltValueField(wireName: r'secret')
  IoK8sApiCoreV1SecretProjection? get secret;

  @BuiltValueField(wireName: r'serviceAccountToken')
  IoK8sApiCoreV1ServiceAccountTokenProjection? get serviceAccountToken;

  IoK8sApiCoreV1VolumeProjection._();

  factory IoK8sApiCoreV1VolumeProjection([void updates(IoK8sApiCoreV1VolumeProjectionBuilder b)]) = _$IoK8sApiCoreV1VolumeProjection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1VolumeProjectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1VolumeProjection> get serializer => _$IoK8sApiCoreV1VolumeProjectionSerializer();
}

class _$IoK8sApiCoreV1VolumeProjectionSerializer implements PrimitiveSerializer<IoK8sApiCoreV1VolumeProjection> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1VolumeProjection, _$IoK8sApiCoreV1VolumeProjection];

  @override
  final String wireName = r'IoK8sApiCoreV1VolumeProjection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1VolumeProjection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.configMap != null) {
      yield r'configMap';
      yield serializers.serialize(
        object.configMap,
        specifiedType: const FullType(IoK8sApiCoreV1ConfigMapProjection),
      );
    }
    if (object.downwardAPI != null) {
      yield r'downwardAPI';
      yield serializers.serialize(
        object.downwardAPI,
        specifiedType: const FullType(IoK8sApiCoreV1DownwardAPIProjection),
      );
    }
    if (object.secret != null) {
      yield r'secret';
      yield serializers.serialize(
        object.secret,
        specifiedType: const FullType(IoK8sApiCoreV1SecretProjection),
      );
    }
    if (object.serviceAccountToken != null) {
      yield r'serviceAccountToken';
      yield serializers.serialize(
        object.serviceAccountToken,
        specifiedType: const FullType(IoK8sApiCoreV1ServiceAccountTokenProjection),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1VolumeProjection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1VolumeProjectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configMap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ConfigMapProjection),
          ) as IoK8sApiCoreV1ConfigMapProjection;
          result.configMap.replace(valueDes);
          break;
        case r'downwardAPI':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1DownwardAPIProjection),
          ) as IoK8sApiCoreV1DownwardAPIProjection;
          result.downwardAPI.replace(valueDes);
          break;
        case r'secret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1SecretProjection),
          ) as IoK8sApiCoreV1SecretProjection;
          result.secret.replace(valueDes);
          break;
        case r'serviceAccountToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ServiceAccountTokenProjection),
          ) as IoK8sApiCoreV1ServiceAccountTokenProjection;
          result.serviceAccountToken.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1VolumeProjection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1VolumeProjectionBuilder();
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

