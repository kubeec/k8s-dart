//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_certificate_signing_request_condition.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CertificateSigningRequestCondition {
  /// Returns a new [V1CertificateSigningRequestCondition] instance.
  V1CertificateSigningRequestCondition({

     this.lastTransitionTime,

     this.lastUpdateTime,

     this.message,

     this.reason,

    required  this.status,

    required  this.type,
  });

      /// lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
  @JsonKey(
    
    name: r'lastTransitionTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastTransitionTime;



      /// lastUpdateTime is the time of the last update to this condition
  @JsonKey(
    
    name: r'lastUpdateTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastUpdateTime;



      /// message contains a human readable message with details about the request state
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// reason indicates a brief reason for the request state
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



      /// status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be \"False\" or \"Unknown\".
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false
  )


  final String status;



      /// type of the condition. Known conditions are \"Approved\", \"Denied\", and \"Failed\".  An \"Approved\" condition is added via the /approval subresource, indicating the request was approved and should be issued by the signer.  A \"Denied\" condition is added via the /approval subresource, indicating the request was denied and should not be issued by the signer.  A \"Failed\" condition is added via the /status subresource, indicating the signer failed to issue the certificate.  Approved and Denied conditions are mutually exclusive. Approved, Denied, and Failed conditions cannot be removed once added.  Only one condition of a given type is allowed.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CertificateSigningRequestCondition &&
     other.lastTransitionTime == lastTransitionTime &&
     other.lastUpdateTime == lastUpdateTime &&
     other.message == message &&
     other.reason == reason &&
     other.status == status &&
     other.type == type;

  @override
  int get hashCode =>
    lastTransitionTime.hashCode +
    lastUpdateTime.hashCode +
    message.hashCode +
    reason.hashCode +
    status.hashCode +
    type.hashCode;

  factory V1CertificateSigningRequestCondition.fromJson(Map<String, dynamic> json) => _$V1CertificateSigningRequestConditionFromJson(json);

  Map<String, dynamic> toJson() => _$V1CertificateSigningRequestConditionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

