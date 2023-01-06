//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_certificates_v1_certificate_signing_request_condition.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_certificates_v1_certificate_signing_request_status.g.dart';

/// CertificateSigningRequestStatus contains conditions used to indicate approved/denied/failed status of the request, and the issued certificate.
///
/// Properties:
/// * [certificate] - certificate is populated with an issued certificate by the signer after an Approved condition is present. This field is set via the /status subresource. Once populated, this field is immutable.  If the certificate signing request is denied, a condition of type \"Denied\" is added and this field remains empty. If the signer cannot issue the certificate, a condition of type \"Failed\" is added and this field remains empty.  Validation requirements:  1. certificate must contain one or more PEM blocks.  2. All PEM blocks must have the \"CERTIFICATE\" label, contain no headers, and the encoded data   must be a BER-encoded ASN.1 Certificate structure as described in section 4 of RFC5280.  3. Non-PEM content may appear before or after the \"CERTIFICATE\" PEM blocks and is unvalidated,   to allow for explanatory text as described in section 5.2 of RFC7468.  If more than one PEM block is present, and the definition of the requested spec.signerName does not indicate otherwise, the first block is the issued certificate, and subsequent blocks should be treated as intermediate certificates and presented in TLS handshakes.  The certificate is encoded in PEM format.  When serialized as JSON or YAML, the data is additionally base64-encoded, so it consists of:      base64(     -----BEGIN CERTIFICATE-----     ...     -----END CERTIFICATE-----     )
/// * [conditions] - conditions applied to the request. Known conditions are \"Approved\", \"Denied\", and \"Failed\".
@BuiltValue()
abstract class IoK8sApiCertificatesV1CertificateSigningRequestStatus implements Built<IoK8sApiCertificatesV1CertificateSigningRequestStatus, IoK8sApiCertificatesV1CertificateSigningRequestStatusBuilder> {
  /// certificate is populated with an issued certificate by the signer after an Approved condition is present. This field is set via the /status subresource. Once populated, this field is immutable.  If the certificate signing request is denied, a condition of type \"Denied\" is added and this field remains empty. If the signer cannot issue the certificate, a condition of type \"Failed\" is added and this field remains empty.  Validation requirements:  1. certificate must contain one or more PEM blocks.  2. All PEM blocks must have the \"CERTIFICATE\" label, contain no headers, and the encoded data   must be a BER-encoded ASN.1 Certificate structure as described in section 4 of RFC5280.  3. Non-PEM content may appear before or after the \"CERTIFICATE\" PEM blocks and is unvalidated,   to allow for explanatory text as described in section 5.2 of RFC7468.  If more than one PEM block is present, and the definition of the requested spec.signerName does not indicate otherwise, the first block is the issued certificate, and subsequent blocks should be treated as intermediate certificates and presented in TLS handshakes.  The certificate is encoded in PEM format.  When serialized as JSON or YAML, the data is additionally base64-encoded, so it consists of:      base64(     -----BEGIN CERTIFICATE-----     ...     -----END CERTIFICATE-----     )
  @BuiltValueField(wireName: r'certificate')
  String? get certificate;

  /// conditions applied to the request. Known conditions are \"Approved\", \"Denied\", and \"Failed\".
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiCertificatesV1CertificateSigningRequestCondition>? get conditions;

  IoK8sApiCertificatesV1CertificateSigningRequestStatus._();

  factory IoK8sApiCertificatesV1CertificateSigningRequestStatus([void updates(IoK8sApiCertificatesV1CertificateSigningRequestStatusBuilder b)]) = _$IoK8sApiCertificatesV1CertificateSigningRequestStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCertificatesV1CertificateSigningRequestStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCertificatesV1CertificateSigningRequestStatus> get serializer => _$IoK8sApiCertificatesV1CertificateSigningRequestStatusSerializer();
}

class _$IoK8sApiCertificatesV1CertificateSigningRequestStatusSerializer implements PrimitiveSerializer<IoK8sApiCertificatesV1CertificateSigningRequestStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiCertificatesV1CertificateSigningRequestStatus, _$IoK8sApiCertificatesV1CertificateSigningRequestStatus];

  @override
  final String wireName = r'IoK8sApiCertificatesV1CertificateSigningRequestStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCertificatesV1CertificateSigningRequestStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.certificate != null) {
      yield r'certificate';
      yield serializers.serialize(
        object.certificate,
        specifiedType: const FullType(String),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCertificatesV1CertificateSigningRequestCondition)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCertificatesV1CertificateSigningRequestStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCertificatesV1CertificateSigningRequestStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'certificate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.certificate = valueDes;
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCertificatesV1CertificateSigningRequestCondition)]),
          ) as BuiltList<IoK8sApiCertificatesV1CertificateSigningRequestCondition>;
          result.conditions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCertificatesV1CertificateSigningRequestStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCertificatesV1CertificateSigningRequestStatusBuilder();
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

