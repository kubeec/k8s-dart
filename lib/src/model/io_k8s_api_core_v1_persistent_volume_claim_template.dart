//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_claim_spec.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_persistent_volume_claim_template.g.dart';

/// PersistentVolumeClaimTemplate is used to produce PersistentVolumeClaim objects as part of an EphemeralVolumeSource.
///
/// Properties:
/// * [metadata] 
/// * [spec] 
@BuiltValue()
abstract class IoK8sApiCoreV1PersistentVolumeClaimTemplate implements Built<IoK8sApiCoreV1PersistentVolumeClaimTemplate, IoK8sApiCoreV1PersistentVolumeClaimTemplateBuilder> {
  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  @BuiltValueField(wireName: r'spec')
  IoK8sApiCoreV1PersistentVolumeClaimSpec get spec;

  IoK8sApiCoreV1PersistentVolumeClaimTemplate._();

  factory IoK8sApiCoreV1PersistentVolumeClaimTemplate([void updates(IoK8sApiCoreV1PersistentVolumeClaimTemplateBuilder b)]) = _$IoK8sApiCoreV1PersistentVolumeClaimTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PersistentVolumeClaimTemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PersistentVolumeClaimTemplate> get serializer => _$IoK8sApiCoreV1PersistentVolumeClaimTemplateSerializer();
}

class _$IoK8sApiCoreV1PersistentVolumeClaimTemplateSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PersistentVolumeClaimTemplate> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PersistentVolumeClaimTemplate, _$IoK8sApiCoreV1PersistentVolumeClaimTemplate];

  @override
  final String wireName = r'IoK8sApiCoreV1PersistentVolumeClaimTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PersistentVolumeClaimTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
      );
    }
    yield r'spec';
    yield serializers.serialize(
      object.spec,
      specifiedType: const FullType(IoK8sApiCoreV1PersistentVolumeClaimSpec),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PersistentVolumeClaimTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PersistentVolumeClaimTemplateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
          ) as IoK8sApimachineryPkgApisMetaV1ObjectMeta;
          result.metadata.replace(valueDes);
          break;
        case r'spec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PersistentVolumeClaimSpec),
          ) as IoK8sApiCoreV1PersistentVolumeClaimSpec;
          result.spec.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PersistentVolumeClaimTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PersistentVolumeClaimTemplateBuilder();
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

