//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_list_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_kube_aggregator_pkg_apis_apiregistration_v1_api_service_list.g.dart';

/// APIServiceList is a list of APIService objects.
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [items] - Items is the list of APIService
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
@BuiltValue()
abstract class IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList implements Built<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList, IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceListBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Items is the list of APIService
  @BuiltValueField(wireName: r'items')
  BuiltList<IoK8sKubeAggregatorPkgApisApiregistrationV1APIService> get items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ListMeta? get metadata;

  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList._();

  factory IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList([void updates(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceListBuilder b)]) = _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList> get serializer => _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceListSerializer();
}

class _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceListSerializer implements PrimitiveSerializer<IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList> {
  @override
  final Iterable<Type> types = const [IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList, _$IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList];

  @override
  final String wireName = r'IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sKubeAggregatorPkgApisApiregistrationV1APIService)]),
    );
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
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ListMeta),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceListBuilder result,
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
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sKubeAggregatorPkgApisApiregistrationV1APIService)]),
          ) as BuiltList<IoK8sKubeAggregatorPkgApisApiregistrationV1APIService>;
          result.items.replace(valueDes);
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
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ListMeta),
          ) as IoK8sApimachineryPkgApisMetaV1ListMeta;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sKubeAggregatorPkgApisApiregistrationV1APIServiceListBuilder();
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

