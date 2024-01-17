//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_token_review_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1TokenReviewSpec {
  /// Returns a new [V1TokenReviewSpec] instance.
  V1TokenReviewSpec({

     this.audiences,

     this.token,
  });

      /// Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
  @JsonKey(
    
    name: r'audiences',
    required: false,
    includeIfNull: false
  )


  final List<String>? audiences;



      /// Token is the opaque bearer token.
  @JsonKey(
    
    name: r'token',
    required: false,
    includeIfNull: false
  )


  final String? token;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1TokenReviewSpec &&
     other.audiences == audiences &&
     other.token == token;

  @override
  int get hashCode =>
    audiences.hashCode +
    token.hashCode;

  factory V1TokenReviewSpec.fromJson(Map<String, dynamic> json) => _$V1TokenReviewSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1TokenReviewSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

