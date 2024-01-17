//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_user_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_token_review_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1TokenReviewStatus {
  /// Returns a new [V1TokenReviewStatus] instance.
  V1TokenReviewStatus({

     this.audiences,

     this.authenticated,

     this.error,

     this.user,
  });

      /// Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is \"true\", the token is valid against the audience of the Kubernetes API server.
  @JsonKey(
    
    name: r'audiences',
    required: false,
    includeIfNull: false
  )


  final List<String>? audiences;



      /// Authenticated indicates that the token was associated with a known user.
  @JsonKey(
    
    name: r'authenticated',
    required: false,
    includeIfNull: false
  )


  final bool? authenticated;



      /// Error indicates that the token couldn't be checked
  @JsonKey(
    
    name: r'error',
    required: false,
    includeIfNull: false
  )


  final String? error;



  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false
  )


  final V1UserInfo? user;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1TokenReviewStatus &&
     other.audiences == audiences &&
     other.authenticated == authenticated &&
     other.error == error &&
     other.user == user;

  @override
  int get hashCode =>
    audiences.hashCode +
    authenticated.hashCode +
    error.hashCode +
    user.hashCode;

  factory V1TokenReviewStatus.fromJson(Map<String, dynamic> json) => _$V1TokenReviewStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1TokenReviewStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

