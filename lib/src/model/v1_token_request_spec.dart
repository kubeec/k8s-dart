//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_bound_object_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_token_request_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1TokenRequestSpec {
  /// Returns a new [V1TokenRequestSpec] instance.
  V1TokenRequestSpec({

    required  this.audiences,

     this.boundObjectRef,

     this.expirationSeconds,
  });

      /// Audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
  @JsonKey(
    
    name: r'audiences',
    required: true,
    includeIfNull: false
  )


  final List<String> audiences;



  @JsonKey(
    
    name: r'boundObjectRef',
    required: false,
    includeIfNull: false
  )


  final V1BoundObjectReference? boundObjectRef;



      /// ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
  @JsonKey(
    
    name: r'expirationSeconds',
    required: false,
    includeIfNull: false
  )


  final int? expirationSeconds;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1TokenRequestSpec &&
     other.audiences == audiences &&
     other.boundObjectRef == boundObjectRef &&
     other.expirationSeconds == expirationSeconds;

  @override
  int get hashCode =>
    audiences.hashCode +
    boundObjectRef.hashCode +
    expirationSeconds.hashCode;

  factory V1TokenRequestSpec.fromJson(Map<String, dynamic> json) => _$V1TokenRequestSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1TokenRequestSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

