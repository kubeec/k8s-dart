//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_claim_template.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_ephemeral_volume_source.g.dart';

/// Represents an ephemeral volume that is handled by a normal storage driver.
///
/// Properties:
/// * [volumeClaimTemplate] 
@BuiltValue()
abstract class IoK8sApiCoreV1EphemeralVolumeSource implements Built<IoK8sApiCoreV1EphemeralVolumeSource, IoK8sApiCoreV1EphemeralVolumeSourceBuilder> {
  @BuiltValueField(wireName: r'volumeClaimTemplate')
  IoK8sApiCoreV1PersistentVolumeClaimTemplate? get volumeClaimTemplate;

  IoK8sApiCoreV1EphemeralVolumeSource._();

  factory IoK8sApiCoreV1EphemeralVolumeSource([void updates(IoK8sApiCoreV1EphemeralVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1EphemeralVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1EphemeralVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1EphemeralVolumeSource> get serializer => _$IoK8sApiCoreV1EphemeralVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1EphemeralVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1EphemeralVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1EphemeralVolumeSource, _$IoK8sApiCoreV1EphemeralVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1EphemeralVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1EphemeralVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.volumeClaimTemplate != null) {
      yield r'volumeClaimTemplate';
      yield serializers.serialize(
        object.volumeClaimTemplate,
        specifiedType: const FullType(IoK8sApiCoreV1PersistentVolumeClaimTemplate),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1EphemeralVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1EphemeralVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'volumeClaimTemplate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PersistentVolumeClaimTemplate),
          ) as IoK8sApiCoreV1PersistentVolumeClaimTemplate;
          result.volumeClaimTemplate.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1EphemeralVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1EphemeralVolumeSourceBuilder();
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

