//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'storage_v1_token_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StorageV1TokenRequest {
  /// Returns a new [StorageV1TokenRequest] instance.
  StorageV1TokenRequest({

    required  this.audience,

     this.expirationSeconds,
  });

      /// audience is the intended audience of the token in \"TokenRequestSpec\". It will default to the audiences of kube apiserver.
  @JsonKey(
    
    name: r'audience',
    required: true,
    includeIfNull: false
  )


  final String audience;



      /// expirationSeconds is the duration of validity of the token in \"TokenRequestSpec\". It has the same default value of \"ExpirationSeconds\" in \"TokenRequestSpec\".
  @JsonKey(
    
    name: r'expirationSeconds',
    required: false,
    includeIfNull: false
  )


  final int? expirationSeconds;



  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageV1TokenRequest &&
     other.audience == audience &&
     other.expirationSeconds == expirationSeconds;

  @override
  int get hashCode =>
    audience.hashCode +
    expirationSeconds.hashCode;

  factory StorageV1TokenRequest.fromJson(Map<String, dynamic> json) => _$StorageV1TokenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$StorageV1TokenRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

