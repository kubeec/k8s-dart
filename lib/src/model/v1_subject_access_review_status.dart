//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_subject_access_review_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1SubjectAccessReviewStatus {
  /// Returns a new [V1SubjectAccessReviewStatus] instance.
  V1SubjectAccessReviewStatus({

    required  this.allowed,

     this.denied,

     this.evaluationError,

     this.reason,
  });

      /// Allowed is required. True if the action would be allowed, false otherwise.
  @JsonKey(
    
    name: r'allowed',
    required: true,
    includeIfNull: false
  )


  final bool allowed;



      /// Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
  @JsonKey(
    
    name: r'denied',
    required: false,
    includeIfNull: false
  )


  final bool? denied;



      /// EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
  @JsonKey(
    
    name: r'evaluationError',
    required: false,
    includeIfNull: false
  )


  final String? evaluationError;



      /// Reason is optional.  It indicates why a request was allowed or denied.
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SubjectAccessReviewStatus &&
     other.allowed == allowed &&
     other.denied == denied &&
     other.evaluationError == evaluationError &&
     other.reason == reason;

  @override
  int get hashCode =>
    allowed.hashCode +
    denied.hashCode +
    evaluationError.hashCode +
    reason.hashCode;

  factory V1SubjectAccessReviewStatus.fromJson(Map<String, dynamic> json) => _$V1SubjectAccessReviewStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1SubjectAccessReviewStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

