//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_downward_api_projection.dart';
import 'package:k8s/src/model/v1_service_account_token_projection.dart';
import 'package:k8s/src/model/v1_secret_projection.dart';
import 'package:k8s/src/model/v1_config_map_projection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_volume_projection.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1VolumeProjection {
  /// Returns a new [V1VolumeProjection] instance.
  V1VolumeProjection({

     this.configMap,

     this.downwardAPI,

     this.secret,

     this.serviceAccountToken,
  });

  @JsonKey(
    
    name: r'configMap',
    required: false,
    includeIfNull: false
  )


  final V1ConfigMapProjection? configMap;



  @JsonKey(
    
    name: r'downwardAPI',
    required: false,
    includeIfNull: false
  )


  final V1DownwardAPIProjection? downwardAPI;



  @JsonKey(
    
    name: r'secret',
    required: false,
    includeIfNull: false
  )


  final V1SecretProjection? secret;



  @JsonKey(
    
    name: r'serviceAccountToken',
    required: false,
    includeIfNull: false
  )


  final V1ServiceAccountTokenProjection? serviceAccountToken;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1VolumeProjection &&
     other.configMap == configMap &&
     other.downwardAPI == downwardAPI &&
     other.secret == secret &&
     other.serviceAccountToken == serviceAccountToken;

  @override
  int get hashCode =>
    configMap.hashCode +
    downwardAPI.hashCode +
    secret.hashCode +
    serviceAccountToken.hashCode;

  factory V1VolumeProjection.fromJson(Map<String, dynamic> json) => _$V1VolumeProjectionFromJson(json);

  Map<String, dynamic> toJson() => _$V1VolumeProjectionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

