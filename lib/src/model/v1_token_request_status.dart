//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_token_request_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1TokenRequestStatus {
  /// Returns a new [V1TokenRequestStatus] instance.
  V1TokenRequestStatus({

    required  this.expirationTimestamp,

    required  this.token,
  });

      /// ExpirationTimestamp is the time of expiration of the returned token.
  @JsonKey(
    
    name: r'expirationTimestamp',
    required: true,
    includeIfNull: false
  )


  final DateTime expirationTimestamp;



      /// Token is the opaque bearer token.
  @JsonKey(
    
    name: r'token',
    required: true,
    includeIfNull: false
  )


  final String token;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1TokenRequestStatus &&
     other.expirationTimestamp == expirationTimestamp &&
     other.token == token;

  @override
  int get hashCode =>
    expirationTimestamp.hashCode +
    token.hashCode;

  factory V1TokenRequestStatus.fromJson(Map<String, dynamic> json) => _$V1TokenRequestStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1TokenRequestStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

