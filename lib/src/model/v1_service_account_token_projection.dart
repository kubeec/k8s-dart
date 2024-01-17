//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_service_account_token_projection.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ServiceAccountTokenProjection {
  /// Returns a new [V1ServiceAccountTokenProjection] instance.
  V1ServiceAccountTokenProjection({

     this.audience,

     this.expirationSeconds,

    required  this.path,
  });

      /// audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver.
  @JsonKey(
    
    name: r'audience',
    required: false,
    includeIfNull: false
  )


  final String? audience;



      /// expirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes.
  @JsonKey(
    
    name: r'expirationSeconds',
    required: false,
    includeIfNull: false
  )


  final int? expirationSeconds;



      /// path is the path relative to the mount point of the file to project the token into.
  @JsonKey(
    
    name: r'path',
    required: true,
    includeIfNull: false
  )


  final String path;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ServiceAccountTokenProjection &&
     other.audience == audience &&
     other.expirationSeconds == expirationSeconds &&
     other.path == path;

  @override
  int get hashCode =>
    audience.hashCode +
    expirationSeconds.hashCode +
    path.hashCode;

  factory V1ServiceAccountTokenProjection.fromJson(Map<String, dynamic> json) => _$V1ServiceAccountTokenProjectionFromJson(json);

  Map<String, dynamic> toJson() => _$V1ServiceAccountTokenProjectionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

