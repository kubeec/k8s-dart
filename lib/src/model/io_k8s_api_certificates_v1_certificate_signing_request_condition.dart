//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_certificates_v1_certificate_signing_request_condition.g.dart';

/// CertificateSigningRequestCondition describes a condition of a CertificateSigningRequest object
///
/// Properties:
/// * [lastTransitionTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [lastUpdateTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [message] - message contains a human readable message with details about the request state
/// * [reason] - reason indicates a brief reason for the request state
/// * [status] - status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be \"False\" or \"Unknown\".
/// * [type] - type of the condition. Known conditions are \"Approved\", \"Denied\", and \"Failed\".  An \"Approved\" condition is added via the /approval subresource, indicating the request was approved and should be issued by the signer.  A \"Denied\" condition is added via the /approval subresource, indicating the request was denied and should not be issued by the signer.  A \"Failed\" condition is added via the /status subresource, indicating the signer failed to issue the certificate.  Approved and Denied conditions are mutually exclusive. Approved, Denied, and Failed conditions cannot be removed once added.  Only one condition of a given type is allowed.
@BuiltValue()
abstract class IoK8sApiCertificatesV1CertificateSigningRequestCondition implements Built<IoK8sApiCertificatesV1CertificateSigningRequestCondition, IoK8sApiCertificatesV1CertificateSigningRequestConditionBuilder> {
  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastTransitionTime')
  DateTime? get lastTransitionTime;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastUpdateTime')
  DateTime? get lastUpdateTime;

  /// message contains a human readable message with details about the request state
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// reason indicates a brief reason for the request state
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be \"False\" or \"Unknown\".
  @BuiltValueField(wireName: r'status')
  String get status;

  /// type of the condition. Known conditions are \"Approved\", \"Denied\", and \"Failed\".  An \"Approved\" condition is added via the /approval subresource, indicating the request was approved and should be issued by the signer.  A \"Denied\" condition is added via the /approval subresource, indicating the request was denied and should not be issued by the signer.  A \"Failed\" condition is added via the /status subresource, indicating the signer failed to issue the certificate.  Approved and Denied conditions are mutually exclusive. Approved, Denied, and Failed conditions cannot be removed once added.  Only one condition of a given type is allowed.
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiCertificatesV1CertificateSigningRequestCondition._();

  factory IoK8sApiCertificatesV1CertificateSigningRequestCondition([void updates(IoK8sApiCertificatesV1CertificateSigningRequestConditionBuilder b)]) = _$IoK8sApiCertificatesV1CertificateSigningRequestCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCertificatesV1CertificateSigningRequestConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCertificatesV1CertificateSigningRequestCondition> get serializer => _$IoK8sApiCertificatesV1CertificateSigningRequestConditionSerializer();
}

class _$IoK8sApiCertificatesV1CertificateSigningRequestConditionSerializer implements PrimitiveSerializer<IoK8sApiCertificatesV1CertificateSigningRequestCondition> {
  @override
  final Iterable<Type> types = const [IoK8sApiCertificatesV1CertificateSigningRequestCondition, _$IoK8sApiCertificatesV1CertificateSigningRequestCondition];

  @override
  final String wireName = r'IoK8sApiCertificatesV1CertificateSigningRequestCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCertificatesV1CertificateSigningRequestCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lastTransitionTime != null) {
      yield r'lastTransitionTime';
      yield serializers.serialize(
        object.lastTransitionTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastUpdateTime != null) {
      yield r'lastUpdateTime';
      yield serializers.serialize(
        object.lastUpdateTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCertificatesV1CertificateSigningRequestCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCertificatesV1CertificateSigningRequestConditionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lastTransitionTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastTransitionTime = valueDes;
          break;
        case r'lastUpdateTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUpdateTime = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCertificatesV1CertificateSigningRequestCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCertificatesV1CertificateSigningRequestConditionBuilder();
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

