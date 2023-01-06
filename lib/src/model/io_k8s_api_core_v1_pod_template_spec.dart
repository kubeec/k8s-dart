//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_spec.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_pod_template_spec.g.dart';

/// PodTemplateSpec describes the data a pod should have when created from a template
///
/// Properties:
/// * [metadata] 
/// * [spec] 
@BuiltValue()
abstract class IoK8sApiCoreV1PodTemplateSpec implements Built<IoK8sApiCoreV1PodTemplateSpec, IoK8sApiCoreV1PodTemplateSpecBuilder> {
  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  @BuiltValueField(wireName: r'spec')
  IoK8sApiCoreV1PodSpec? get spec;

  IoK8sApiCoreV1PodTemplateSpec._();

  factory IoK8sApiCoreV1PodTemplateSpec([void updates(IoK8sApiCoreV1PodTemplateSpecBuilder b)]) = _$IoK8sApiCoreV1PodTemplateSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PodTemplateSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PodTemplateSpec> get serializer => _$IoK8sApiCoreV1PodTemplateSpecSerializer();
}

class _$IoK8sApiCoreV1PodTemplateSpecSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PodTemplateSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PodTemplateSpec, _$IoK8sApiCoreV1PodTemplateSpec];

  @override
  final String wireName = r'IoK8sApiCoreV1PodTemplateSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PodTemplateSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
      );
    }
    if (object.spec != null) {
      yield r'spec';
      yield serializers.serialize(
        object.spec,
        specifiedType: const FullType(IoK8sApiCoreV1PodSpec),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PodTemplateSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PodTemplateSpecBuilder result,
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
            specifiedType: const FullType(IoK8sApiCoreV1PodSpec),
          ) as IoK8sApiCoreV1PodSpec;
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
  IoK8sApiCoreV1PodTemplateSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PodTemplateSpecBuilder();
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

