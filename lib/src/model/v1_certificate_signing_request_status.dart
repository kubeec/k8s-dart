//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_certificate_signing_request_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_certificate_signing_request_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CertificateSigningRequestStatus {
  /// Returns a new [V1CertificateSigningRequestStatus] instance.
  V1CertificateSigningRequestStatus({

     this.certificate,

     this.conditions,
  });

      /// certificate is populated with an issued certificate by the signer after an Approved condition is present. This field is set via the /status subresource. Once populated, this field is immutable.  If the certificate signing request is denied, a condition of type \"Denied\" is added and this field remains empty. If the signer cannot issue the certificate, a condition of type \"Failed\" is added and this field remains empty.  Validation requirements:  1. certificate must contain one or more PEM blocks.  2. All PEM blocks must have the \"CERTIFICATE\" label, contain no headers, and the encoded data   must be a BER-encoded ASN.1 Certificate structure as described in section 4 of RFC5280.  3. Non-PEM content may appear before or after the \"CERTIFICATE\" PEM blocks and is unvalidated,   to allow for explanatory text as described in section 5.2 of RFC7468.  If more than one PEM block is present, and the definition of the requested spec.signerName does not indicate otherwise, the first block is the issued certificate, and subsequent blocks should be treated as intermediate certificates and presented in TLS handshakes.  The certificate is encoded in PEM format.  When serialized as JSON or YAML, the data is additionally base64-encoded, so it consists of:      base64(     -----BEGIN CERTIFICATE-----     ...     -----END CERTIFICATE-----     )
  @JsonKey(
    
    name: r'certificate',
    required: false,
    includeIfNull: false
  )


  final String? certificate;



      /// conditions applied to the request. Known conditions are \"Approved\", \"Denied\", and \"Failed\".
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1CertificateSigningRequestCondition>? conditions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CertificateSigningRequestStatus &&
     other.certificate == certificate &&
     other.conditions == conditions;

  @override
  int get hashCode =>
    certificate.hashCode +
    conditions.hashCode;

  factory V1CertificateSigningRequestStatus.fromJson(Map<String, dynamic> json) => _$V1CertificateSigningRequestStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1CertificateSigningRequestStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

