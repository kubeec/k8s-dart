//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_batch_v1_job_spec.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_batch_v1_job_template_spec.g.dart';

/// JobTemplateSpec describes the data a Job should have when created from a template
///
/// Properties:
/// * [metadata] 
/// * [spec] 
@BuiltValue()
abstract class IoK8sApiBatchV1JobTemplateSpec implements Built<IoK8sApiBatchV1JobTemplateSpec, IoK8sApiBatchV1JobTemplateSpecBuilder> {
  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  @BuiltValueField(wireName: r'spec')
  IoK8sApiBatchV1JobSpec? get spec;

  IoK8sApiBatchV1JobTemplateSpec._();

  factory IoK8sApiBatchV1JobTemplateSpec([void updates(IoK8sApiBatchV1JobTemplateSpecBuilder b)]) = _$IoK8sApiBatchV1JobTemplateSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiBatchV1JobTemplateSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiBatchV1JobTemplateSpec> get serializer => _$IoK8sApiBatchV1JobTemplateSpecSerializer();
}

class _$IoK8sApiBatchV1JobTemplateSpecSerializer implements PrimitiveSerializer<IoK8sApiBatchV1JobTemplateSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiBatchV1JobTemplateSpec, _$IoK8sApiBatchV1JobTemplateSpec];

  @override
  final String wireName = r'IoK8sApiBatchV1JobTemplateSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiBatchV1JobTemplateSpec object, {
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
        specifiedType: const FullType(IoK8sApiBatchV1JobSpec),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiBatchV1JobTemplateSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiBatchV1JobTemplateSpecBuilder result,
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
            specifiedType: const FullType(IoK8sApiBatchV1JobSpec),
          ) as IoK8sApiBatchV1JobSpec;
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
  IoK8sApiBatchV1JobTemplateSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiBatchV1JobTemplateSpecBuilder();
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

