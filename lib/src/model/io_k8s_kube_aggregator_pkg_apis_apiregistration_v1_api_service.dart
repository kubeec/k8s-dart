//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service_status.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:k8s/src/model/io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service_spec.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service.g.dart';

/// APIService represents a server for a particular GroupVersion. Name must be \"version.group\".
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
/// * [spec] 
/// * [status] 
@BuiltValue()
abstract class IoK8sKubeAggregatorPkgApisApiregistrationV1APIService implements Built<IoK8sKubeAggregatorPkgApisApiregistrationV1APIService, IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  @BuiltValueField(wireName: r'spec')
  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec? get spec;

  @BuiltValueField(wireName: r'status')
  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus? get status;

  IoK8sKubeAggregatorPkgApisApiregistrationV1APIService._();

  factory IoK8sKubeAggregatorPkgApisApiregistrationV1APIService([void updates(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceBuilder b)]) = _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIService;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sKubeAggregatorPkgApisApiregistrationV1APIService> get serializer => _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSerializer();
}

class _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSerializer implements PrimitiveSerializer<IoK8sKubeAggregatorPkgApisApiregistrationV1APIService> {
  @override
  final Iterable<Type> types = const [IoK8sKubeAggregatorPkgApisApiregistrationV1APIService, _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIService];

  @override
  final String wireName = r'IoK8sKubeAggregatorPkgApisApiregistrationV1APIService';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sKubeAggregatorPkgApisApiregistrationV1APIService object, {
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
        specifiedType: const FullType(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sKubeAggregatorPkgApisApiregistrationV1APIService object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceBuilder result,
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
            specifiedType: const FullType(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec),
          ) as IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceSpec;
          result.spec.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus),
          ) as IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceStatus;
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
  IoK8sKubeAggregatorPkgApisApiregistrationV1APIService deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceBuilder();
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

