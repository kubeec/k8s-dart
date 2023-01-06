//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_certificates_v1_certificate_signing_request.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_list_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_certificates_v1_certificate_signing_request_list.g.dart';

/// CertificateSigningRequestList is a collection of CertificateSigningRequest objects
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [items] - items is a collection of CertificateSigningRequest objects
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
@BuiltValue()
abstract class IoK8sApiCertificatesV1CertificateSigningRequestList implements Built<IoK8sApiCertificatesV1CertificateSigningRequestList, IoK8sApiCertificatesV1CertificateSigningRequestListBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// items is a collection of CertificateSigningRequest objects
  @BuiltValueField(wireName: r'items')
  BuiltList<IoK8sApiCertificatesV1CertificateSigningRequest> get items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ListMeta? get metadata;

  IoK8sApiCertificatesV1CertificateSigningRequestList._();

  factory IoK8sApiCertificatesV1CertificateSigningRequestList([void updates(IoK8sApiCertificatesV1CertificateSigningRequestListBuilder b)]) = _$IoK8sApiCertificatesV1CertificateSigningRequestList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCertificatesV1CertificateSigningRequestListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCertificatesV1CertificateSigningRequestList> get serializer => _$IoK8sApiCertificatesV1CertificateSigningRequestListSerializer();
}

class _$IoK8sApiCertificatesV1CertificateSigningRequestListSerializer implements PrimitiveSerializer<IoK8sApiCertificatesV1CertificateSigningRequestList> {
  @override
  final Iterable<Type> types = const [IoK8sApiCertificatesV1CertificateSigningRequestList, _$IoK8sApiCertificatesV1CertificateSigningRequestList];

  @override
  final String wireName = r'IoK8sApiCertificatesV1CertificateSigningRequestList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCertificatesV1CertificateSigningRequestList object, {
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
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCertificatesV1CertificateSigningRequest)]),
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
    IoK8sApiCertificatesV1CertificateSigningRequestList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCertificatesV1CertificateSigningRequestListBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCertificatesV1CertificateSigningRequest)]),
          ) as BuiltList<IoK8sApiCertificatesV1CertificateSigningRequest>;
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
  IoK8sApiCertificatesV1CertificateSigningRequestList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCertificatesV1CertificateSigningRequestListBuilder();
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

