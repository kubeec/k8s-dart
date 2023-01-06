//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_batch_v1_cron_job_status.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_cron_job_spec.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_batch_v1_cron_job.g.dart';

/// CronJob represents the configuration of a single cron job.
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
/// * [spec] 
/// * [status] 
@BuiltValue()
abstract class IoK8sApiBatchV1CronJob implements Built<IoK8sApiBatchV1CronJob, IoK8sApiBatchV1CronJobBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  @BuiltValueField(wireName: r'spec')
  IoK8sApiBatchV1CronJobSpec? get spec;

  @BuiltValueField(wireName: r'status')
  IoK8sApiBatchV1CronJobStatus? get status;

  IoK8sApiBatchV1CronJob._();

  factory IoK8sApiBatchV1CronJob([void updates(IoK8sApiBatchV1CronJobBuilder b)]) = _$IoK8sApiBatchV1CronJob;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiBatchV1CronJobBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiBatchV1CronJob> get serializer => _$IoK8sApiBatchV1CronJobSerializer();
}

class _$IoK8sApiBatchV1CronJobSerializer implements PrimitiveSerializer<IoK8sApiBatchV1CronJob> {
  @override
  final Iterable<Type> types = const [IoK8sApiBatchV1CronJob, _$IoK8sApiBatchV1CronJob];

  @override
  final String wireName = r'IoK8sApiBatchV1CronJob';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiBatchV1CronJob object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
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
        specifiedType: const FullType(IoK8sApiBatchV1CronJobSpec),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(IoK8sApiBatchV1CronJobStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiBatchV1CronJob object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiBatchV1CronJobBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiVersion = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
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
            specifiedType: const FullType(IoK8sApiBatchV1CronJobSpec),
          ) as IoK8sApiBatchV1CronJobSpec;
          result.spec.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiBatchV1CronJobStatus),
          ) as IoK8sApiBatchV1CronJobStatus;
          result.status.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiBatchV1CronJob deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiBatchV1CronJobBuilder();
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

