//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim_spec.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_resource_v1alpha1_resource_claim_template_spec.g.dart';

/// ResourceClaimTemplateSpec contains the metadata and fields for a ResourceClaim.
///
/// Properties:
/// * [metadata] 
/// * [spec] 
@BuiltValue()
abstract class IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec implements Built<IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec, IoK8sApiResourceV1alpha1ResourceClaimTemplateSpecBuilder> {
  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  @BuiltValueField(wireName: r'spec')
  IoK8sApiResourceV1alpha1ResourceClaimSpec get spec;

  IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec._();

  factory IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec([void updates(IoK8sApiResourceV1alpha1ResourceClaimTemplateSpecBuilder b)]) = _$IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiResourceV1alpha1ResourceClaimTemplateSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec> get serializer => _$IoK8sApiResourceV1alpha1ResourceClaimTemplateSpecSerializer();
}

class _$IoK8sApiResourceV1alpha1ResourceClaimTemplateSpecSerializer implements PrimitiveSerializer<IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec, _$IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec];

  @override
  final String wireName = r'IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec object, {
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
      specifiedType: const FullType(IoK8sApiResourceV1alpha1ResourceClaimSpec),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiResourceV1alpha1ResourceClaimTemplateSpecBuilder result,
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
            specifiedType: const FullType(IoK8sApiResourceV1alpha1ResourceClaimSpec),
          ) as IoK8sApiResourceV1alpha1ResourceClaimSpec;
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
  IoK8sApiResourceV1alpha1ResourceClaimTemplateSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiResourceV1alpha1ResourceClaimTemplateSpecBuilder();
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

